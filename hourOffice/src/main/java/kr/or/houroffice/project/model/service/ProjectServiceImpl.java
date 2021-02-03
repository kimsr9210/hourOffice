package kr.or.houroffice.project.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import kr.or.houroffice.project.model.dao.ProjectDAO;
import kr.or.houroffice.project.model.vo.Project;
import kr.or.houroffice.project.model.vo.ProjectBoard;
import kr.or.houroffice.project.model.vo.ProjectMember;

@Service("projectService")
public class ProjectServiceImpl implements ProjectService{

	@Autowired
	@Qualifier(value="projectDAO")
	private ProjectDAO pDAO;
	
	@Autowired
	@Qualifier(value="sqlSessionTemplate")
	private SqlSessionTemplate sqlSession;
	
	@Override
	public int insertProject(Project p) {
		int result = pDAO.insertProject(p, sqlSession);
		return result;
	}

	@Override
	public ArrayList<Project> selectAllProject(int memNo) {
		ArrayList<Project> myList = pDAO.selectAllProject(memNo, sqlSession);
		return myList;
	}

	@Override
	public ArrayList<Project> selectPublicProject() {
		ArrayList<Project> publicList = pDAO.selectPublicProject(sqlSession);
		return publicList;
	}

	@Override
	public Project selectOneProject(int proNo) {
		Project p = pDAO.selectOneProject(proNo, sqlSession);
		return p;
		
	}

	@Override
	public Project selectOneProjectSubject(String proSubject) {
		Project p = pDAO.selectOneProjectSubject(proSubject, sqlSession);
		return p;
	}

	@Override
	public int insertProjectMemberAdmin(ProjectMember pm) {
		int result = pDAO.insertProjectMemberAdmin(pm, sqlSession);
		return result;
		
	}

	@Override
	public ArrayList<ProjectMember> selectProjectMemberList(int proNo) {
		ArrayList<ProjectMember> projectMemberList = pDAO.selectProjectMemberList(proNo, sqlSession);
		return projectMemberList;
		
	}

	@Override
	public int insertProjectBoard(ProjectBoard pb) {
		int result = pDAO.insertProjectBoard(pb, sqlSession);
		return result;
	}

	@Override
	public ArrayList<ProjectBoard> selectProjectBoardList(int proNo) {
		ArrayList<ProjectBoard> boardList = pDAO.selectProjectBoardList(proNo, sqlSession);
		return boardList;
	}

}
