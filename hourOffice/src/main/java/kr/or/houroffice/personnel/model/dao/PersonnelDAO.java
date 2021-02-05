package kr.or.houroffice.personnel.model.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import kr.or.houroffice.member.model.vo.Member;



@Repository("PersonnelDAO")
public class PersonnelDAO {

	public ArrayList<Member> selectAddbook(SqlSessionTemplate sqlSession) {
		List<Member> list = sqlSession.selectList("addbook.selectAddbook");
		
		return (ArrayList<Member>)list;
	}
	
	//사원 전체 주소록 검색(서치) 결과
	public ArrayList<Member> addbookSearch(SqlSessionTemplate sqlSession, String selectBox, String searchText, int currentPage,
			int recordCountPerpage) {
		
		int start = currentPage * recordCountPerpage - (recordCountPerpage - 1);
		int end = currentPage * recordCountPerpage;
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("start", start);
		map.put("end", end);
		map.put("selectBox", selectBox);
		map.put("searchText", searchText);
		List<Member> list = sqlSession.selectList("addbook.allMemberList", map);
		
		return (ArrayList<Member>)list;
	}

	public Member information(SqlSessionTemplate sqlSession, int memNo) {
		Member m = sqlSession.selectOne("addbook.information",memNo);
		return m;
	}


}
