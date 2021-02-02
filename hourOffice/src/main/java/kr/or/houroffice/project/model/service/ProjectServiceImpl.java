package kr.or.houroffice.project.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import kr.or.houroffice.project.model.dao.ProjectDAO;
import kr.or.houroffice.project.model.vo.Project;

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

}
