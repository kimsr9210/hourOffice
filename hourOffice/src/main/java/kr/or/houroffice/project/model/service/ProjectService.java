package kr.or.houroffice.project.model.service;

import java.util.ArrayList;

import kr.or.houroffice.member.model.vo.Member;
import kr.or.houroffice.project.model.vo.Project;
import kr.or.houroffice.project.model.vo.ProjectBoard;
import kr.or.houroffice.project.model.vo.ProjectMember;

public interface ProjectService {
	public int insertProject(Project p);
	public ArrayList<Project> selectAllProject(int memNo);
	public ArrayList<Project> selectPublicProject();
	public Project selectOneProject(int proNo);
	public Project selectOneProjectSubject(String proSubject);
	public int insertProjectMemberAdmin(ProjectMember pm);
	public ArrayList<ProjectMember> selectProjectMemberList(int proNo);
	public int insertProjectBoard(ProjectBoard pb);
	ArrayList<ProjectBoard> selectProjectBoardList(int proNo);
}
