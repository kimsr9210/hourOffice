package kr.or.houroffice.project.model.service;

import java.util.ArrayList;

import kr.or.houroffice.member.model.vo.Member;
import kr.or.houroffice.project.model.vo.Project;

public interface ProjectService {
	public int insertProject(Project p);
	public ArrayList<Project> selectAllProject(int memNo);
	public ArrayList<Project> selectPublicProject();
	public Project selectOneProject(int proNo);
}
