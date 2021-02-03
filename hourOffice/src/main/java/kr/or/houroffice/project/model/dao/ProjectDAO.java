package kr.or.houroffice.project.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import kr.or.houroffice.project.model.vo.Project;
import kr.or.houroffice.project.model.vo.ProjectBoard;
import kr.or.houroffice.project.model.vo.ProjectMember;

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

	public Project selectOneProjectSubject(String proSubject, SqlSessionTemplate sqlSession) {
		Project p = sqlSession.selectOne("project.selectOneProjectSubject", proSubject);
		return p;
	}

	public int insertProjectMemberAdmin(ProjectMember pm, SqlSessionTemplate sqlSession) {
		int result = sqlSession.insert("project.insertProjectMemberAdmin", pm);
		return result;
		
	}

	public ArrayList<ProjectMember> selectProjectMemberList(int proNo, SqlSessionTemplate sqlSession) {
		List projectMemberList = (List)sqlSession.selectList("project.selectProjectMemberList", proNo);
		return (ArrayList<ProjectMember>)projectMemberList;
	}

	public int insertProjectBoard(ProjectBoard pb, SqlSessionTemplate sqlSession) {
		int result = sqlSession.insert("project.insertProjectBoard", pb);
		return result;
		
	}

	public ArrayList<ProjectBoard> selectProjectBoardList(int proNo, SqlSessionTemplate sqlSession) {
		List boardList = (List)sqlSession.selectList("project.selectProjectBoardList", proNo);
		return (ArrayList<ProjectBoard>)boardList;
	}

}
