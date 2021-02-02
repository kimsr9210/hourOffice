package kr.or.houroffice.project.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import kr.or.houroffice.project.model.vo.Project;

@Repository("projectDAO")
public class ProjectDAO {

	// 프로젝트 생성
	public int insertProject(Project p, SqlSessionTemplate sqlSession) {
		int result = sqlSession.insert("project.insertProject",p);
		return result;
	}

	// 참여 프로젝트 목록
	public ArrayList<Project> selectAllProject(int memNo, SqlSessionTemplate sqlSession) {
		List myList = (List)sqlSession.selectList("project.selectAllProject", memNo);
		return (ArrayList<Project>)myList;
	}

	// 공개 프로젝트 목록
	public ArrayList<Project> selectPublicProject(SqlSessionTemplate sqlSession) {
		List publicList = (List)sqlSession.selectList("project.selectPublicProject");
		return (ArrayList<Project>)publicList;
	}

	public Project selectOneProject(int proNo, SqlSessionTemplate sqlSession) {
		Project p = sqlSession.selectOne("project.selectOneProject", proNo);
		return p;
	}

}
