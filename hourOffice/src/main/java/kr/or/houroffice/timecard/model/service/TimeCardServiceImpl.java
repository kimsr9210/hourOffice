package kr.or.houroffice.timecard.model.service;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import kr.or.houroffice.member.model.vo.Attendance;
import kr.or.houroffice.timecard.model.dao.TimeCardDAO;
import kr.or.houroffice.timecard.model.vo.Holiday;

@Service("TimeCardService")
public class TimeCardServiceImpl implements TimeCardService {

	@Autowired
	@Qualifier(value = "TimeCardDAO")
	private TimeCardDAO tDAO;

	@Autowired // 의존성주입
	@Qualifier(value = "sqlSessionTemplate") // 세션
	private SqlSessionTemplate sqlSession;

	@Override
	public ArrayList<Holiday> selectHoliday() {
		ArrayList<Holiday> list = tDAO.selectHoliday(sqlSession);
		return list;
	}

	// 근태 조회 (리스트)
	public ArrayList<Attendance> selectWork(HttpServletRequest request, int memNo) {

		
		
		String startDate = request.getParameter("startDate");
		String endDate = request.getParameter("endDate");
		
		if(startDate == null || endDate == null){
			String day = getDay();
			startDate = day.split("-")[0];
			endDate = day.split("-")[1];
		}

		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("startDate", startDate);
		map.put("endDate", endDate);
		map.put("memNo", memNo);

		ArrayList<Attendance> list = tDAO.selectWork(sqlSession, map);
		return list;
	}
	
	private String getDay(){
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");
		Date date = new Date();
		try{
			Calendar c1 = Calendar.getInstance();
			String strToday = sdf.format(c1.getTime());
			date = sdf.parse(strToday);
		}catch(ParseException e){
		}

		Calendar cal = Calendar.getInstance(Locale.KOREA);
		cal.setTime(date);

		// 시작일 구하기
		cal.add(Calendar.DATE, 2- cal.get(Calendar.DAY_OF_WEEK));
		
		String sDate = sdf.format(cal.getTime());

		cal.setTime(date);
		// 종료일 구하기
		cal.add(Calendar.DATE, 8 - cal.get(Calendar.DAY_OF_WEEK));
		
		String eDate = sdf.format(cal.getTime());
		
		return sDate+"-"+eDate;
	}
}
