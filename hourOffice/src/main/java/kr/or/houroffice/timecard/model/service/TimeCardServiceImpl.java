package kr.or.houroffice.timecard.model.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

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
	@Qualifier(value = "sqlSessionTemplate") //세션
	private SqlSessionTemplate sqlSession;
	
	@Override
	public ArrayList<Holiday> selectHoliday() {
		ArrayList<Holiday> list = tDAO.selectHoliday(sqlSession);
		return list;
	}

	//근태 조회 (리스트)
	public ArrayList<Attendance> selectWork(int memNo) {
		ArrayList<Attendance> list = tDAO.selectWork(sqlSession,memNo);
		return list;
	}
		
}
