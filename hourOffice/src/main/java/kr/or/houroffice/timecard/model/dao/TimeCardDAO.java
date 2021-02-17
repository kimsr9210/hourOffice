package kr.or.houroffice.timecard.model.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import kr.or.houroffice.member.model.vo.Attendance;
import kr.or.houroffice.personnel.model.vo.Contact;
import kr.or.houroffice.timecard.model.vo.Holiday;

@Repository("TimeCardDAO")
public class TimeCardDAO {

	public ArrayList<Holiday> selectHoliday(SqlSessionTemplate sqlSession) {
		List<Holiday> list = sqlSession.selectList("timeCard.selectHoliday");
		return (ArrayList<Holiday>) list;
	}
	
	//근태 조회 (리스트)
		public int selectWorkTime(SqlSessionTemplate sqlSession, HashMap<String, Object> map) {
			int result = sqlSession.selectOne("timeCard.selectWorkTime",map);
			return result;
		}

	//근태 조회 (리스트)
	public ArrayList<Attendance> selectWork(SqlSessionTemplate sqlSession, HashMap<String, Object> map) {
		List<Attendance> list = sqlSession.selectList("timeCard.selectWork",map);
		return (ArrayList<Attendance>) list;
	}

}
