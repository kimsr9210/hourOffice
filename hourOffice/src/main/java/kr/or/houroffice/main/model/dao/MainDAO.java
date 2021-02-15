package kr.or.houroffice.main.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import kr.or.houroffice.main.model.vo.AllNotice;
import kr.or.houroffice.main.model.vo.CompanyRule;

@Repository("mainDAO")
public class MainDAO {

	public ArrayList<AllNotice> selectAllNotice(SqlSessionTemplate sqlSession) {
		List list = sqlSession.selectList("main.selectAllNotice");
		return (ArrayList<AllNotice>) list;
	}

	public ArrayList<CompanyRule> selectAllRule(SqlSessionTemplate sqlSession) {
		List list = sqlSession.selectList("main.selectAllRule");
		return (ArrayList<CompanyRule>)list;
	}

}
