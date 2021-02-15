package kr.or.houroffice.project.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import kr.or.houroffice.project.model.dao.ProjectDAO;
import kr.or.houroffice.project.model.vo.MonthlyProject;
import kr.or.houroffice.project.model.vo.Project;
import kr.or.houroffice.project.model.vo.ProjectBoard;
import kr.or.houroffice.project.model.vo.ProjectCode;
import kr.or.houroffice.project.model.vo.ProjectComment;
import kr.or.houroffice.project.model.vo.ProjectFavorite;
import kr.or.houroffice.project.model.vo.ProjectFileData;
import kr.or.houroffice.project.model.vo.ProjectMember;
import kr.or.houroffice.project.model.vo.ProjectPlan;
import kr.or.houroffice.project.model.vo.ProjectRequest;
import kr.or.houroffice.project.model.vo.ProjectWork;

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

	public ArrayList<Project> selectMyProjectList(int memNo) {
		ArrayList<Project> myProjectList = pDAO.selectMyProjectList(memNo, sqlSession);
		return myProjectList;
	}

	public int insertProjectFavor(ProjectFavorite pf) {
		int result = pDAO.insertProjectFavor(pf, sqlSession);
		return result;
	}

	public ArrayList<Project> selectProjectFavoriteList(int memNo) {
		ArrayList<Project> favoriteList = pDAO.selectProjectFavoriteList(memNo, sqlSession);
		return favoriteList;
	}

	public int deleteProjectFavor(ProjectFavorite pf) {
		int result = pDAO.deleteProjectFavor(pf, sqlSession);
		return result;
	}

	public int insertBoardComment(ProjectComment pc) {
		int result = pDAO.insertBoardComment(pc, sqlSession);
		return result;
	}

	public ArrayList<ProjectComment> selectBoardCommentList(int proNo) {
		ArrayList<ProjectComment> commentList = pDAO.selectBoardCommentList(proNo, sqlSession);
		return commentList;
	}

	public int updateProjectComment(ProjectComment pc) {
		int result = pDAO.updateProjectComment(pc, sqlSession);
		return result;
	}

	public int deleteProjectComment(int commentNo) {
		int result = pDAO.deleteProjectComment(commentNo, sqlSession);
		return result;
	}

	public int updateProject(Project p) {
		int result = pDAO.updateProject(p, sqlSession);
		return result;
	}

	public int updateProjectBoard(ProjectBoard pb) {
		int result = pDAO.updateProjectBoard(pb, sqlSession);
		return result;
	}

	public int deleteProjectBoard(int boardNo) {
		int result = pDAO.deleteProjectBoard(boardNo, sqlSession);
		return result;
	}

	public int updateProjectMemberExit(ProjectMember pm) {
		int result = pDAO.updateProjectMemberExit(pm, sqlSession);
		return result;
	}

	public int deleteProject(int proNo) {
		int result = pDAO.deleteProject(proNo, sqlSession);
		return result;
	}

	public int updateProjectMgrSet(ProjectMember pm) {
		int result = pDAO.updateProjectMgrSet(pm, sqlSession);
		return result;
	}

	public int updateProjectMgrCancel(ProjectMember pm) {
		int result = pDAO.updateProjectMgrCancel(pm, sqlSession);
		return result;
	}

	public int insertProjectPlan(ProjectPlan pp) {
		int result = pDAO.insertProjectPlan(pp, sqlSession);
		return result;
	}

	public int updateProjectComplate(Project p) {
		int result = pDAO.updateProjectComplate(p, sqlSession);
		return result;
	}


	//BY 진원 - 특정한 게시물에 대한 댓글 목록
	public ArrayList<ProjectComment> selectOneBoardComment(int boardNo){
		return pDAO.selectOneBoardComment(sqlSession,boardNo);
	}
	
	public int insertProjectBoardFile(ProjectFileData pfd) {
		int result = pDAO.insertProjectBoardFile(pfd, sqlSession);
		return result;
	}

	public int insertProjectCode(ProjectCode pc) {
		int result = pDAO.insertProjectCode(pc, sqlSession);
		return result;
	}

	public ArrayList<ProjectCode> selectProjectCodeList(int proNo) {
		ArrayList<ProjectCode> codeList = pDAO.selectProjectCodeList(proNo, sqlSession);
		return codeList;
	}

	public int updateProjectCode(ProjectCode pc) {
		int result = pDAO.updateProjectCode(pc, sqlSession);
		return result;
	}

	public int deleteProjectCode(int codeNo) {
		int result = pDAO.deleteProjectCode(codeNo, sqlSession);
		return result;
	}

	public ArrayList<ProjectComment> selectCodeCommentList(int proNo) {
		ArrayList<ProjectComment> codeCommentList = pDAO.selectCodeCommentList(proNo, sqlSession);
		return codeCommentList;
	}

	public int insertProjectWork(ProjectWork pw) {
		int result = pDAO.insertProjectWork(pw, sqlSession);
		return result;
	}

	public ArrayList<ProjectWork> selectProjectWorkList(int proNo) {
		ArrayList<ProjectWork> workList = pDAO.selectProjectWorkList(proNo, sqlSession);
		return workList;
	}

	public ArrayList<ProjectComment> selectWorkCommentList(int proNo) {
		ArrayList<ProjectComment> workCommentList = pDAO.selectWorkCommentList(proNo, sqlSession);
		return workCommentList;
	}

	public int updateProjectWork(ProjectWork pw) {
		int result = pDAO.updateProjectWork(pw, sqlSession);
		return result;
	}

	public int deleteProjectWork(int workNo) {
		int result = pDAO.deleteProjectWork(workNo, sqlSession);
		return result;
	}

	public int updateProjectWorkCheck(ProjectWork pw) {
		int result = pDAO.updateProjectWorkCheck(pw, sqlSession);
		return result;
	}

	public ArrayList<ProjectFileData> selectProjectFileList(int proNo) {
		ArrayList<ProjectFileData> fileList = pDAO.selectProjectFileList(proNo, sqlSession);
		return fileList;
	}

	public ProjectFileData selectOneProjectFile(int fileNo) {
		ProjectFileData pfd = pDAO.selectOneProjectFile(fileNo, sqlSession);
		return pfd;
	}

	public int deleteProjectFile(int fileNo) {
		int result = pDAO.deleteProjectFile(fileNo, sqlSession);
		return result;
	}

	public int updateProjectMemberCount(Project p) {
		int result = pDAO.updateProjectMemberCount(p, sqlSession);
		return result;
	}

	public int insertProjectRequest(ProjectRequest pr) {
		int result = pDAO.insertProjectRequest(pr, sqlSession);
		return result;
	}

	public ArrayList<ProjectRequest> selectProjectRequestList(int proNo) {
		ArrayList<ProjectRequest> requestList = pDAO.selectProjectRequestList(proNo, sqlSession);
		return requestList;
	}

	public int deleteProjectRequest(ProjectRequest pr) {
		int result = pDAO.deleteProjectRequest(pr, sqlSession);
		return result;
	}

	public ArrayList<Project> selectProjectRequestMember(int memNo) {
		ArrayList<Project> requestList = pDAO.selectProjectRequestMember(memNo, sqlSession);
		return requestList;
	}

	public int insertProjectMember(ProjectMember pm) {
		int result = pDAO.insertProjectMember(pm, sqlSession);
		return result;
	}

	//BY 진원 - 특정 개월 이내 월별 프로젝트 실행 개수 통계
	public ArrayList<MonthlyProject> selectMonthlyProject(int monthly){
		return pDAO.selectMonthlyProject(sqlSession, monthly);
	}

	//BY 진원 -일정 목록 가져오기
	public ArrayList<ProjectPlan> selectPlanList(int proNo) {
		return pDAO.selectPlanList(sqlSession, proNo);
		
	}
	

	

}
