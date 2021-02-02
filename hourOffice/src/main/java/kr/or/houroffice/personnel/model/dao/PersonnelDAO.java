package kr.or.houroffice.personnel.model.dao;

import java.util.ArrayList;
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


}
