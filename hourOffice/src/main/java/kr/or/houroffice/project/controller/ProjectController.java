package kr.or.houroffice.project.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.servlet.ModelAndView;

import com.sun.org.apache.xerces.internal.util.Status;

import kr.or.houroffice.member.model.service.MemberService;
import kr.or.houroffice.member.model.vo.Member;
import kr.or.houroffice.project.model.service.ProjectServiceImpl;
import kr.or.houroffice.project.model.vo.Project;
import kr.or.houroffice.project.model.vo.ProjectBoard;
import kr.or.houroffice.project.model.vo.ProjectComment;
import kr.or.houroffice.project.model.vo.ProjectFavorite;
import kr.or.houroffice.project.model.vo.ProjectMember;
import kr.or.houroffice.project.model.vo.ProjectPlan;

@Controller
public class ProjectController {
	
	@Autowired
	@Qualifier(value="projectService")
	private ProjectServiceImpl pService;
	
	@Autowired
	@Qualifier(value="memberService")
	private MemberService mService;
	
	@RequestMapping(value="/projectList.do")
	public String projectList(){
		return "project/projectList";
	}
	
	//프로젝트 전체 리스트
	@RequestMapping(value="/projectAllList.ho")
	public ModelAndView projectAllList(@SessionAttribute("member") Member member){
		//내가 참가한 프로젝트 가져오기
		ArrayList<Project> myProjectList = pService.selectMyProjectList(member.getMemNo());
		
		//공개 프로젝트 정보 출력
		ArrayList<Project> publicAllList = pService.selectPublicProject();
		
		//공개프로젝트 - 참가 프로젝트
		ArrayList<Project> publicList = new ArrayList<Project>();
		for(int i = 0; i<publicAllList.size();i++){
			Project p = publicAllList.get(i);
			for(Project mp : myProjectList){
				if(mp.getProNo()==p.getProNo()){
					publicAllList.remove(i);
				}
			}
		}
		
		//즐겨찾는 목록 가져오기
		ArrayList<Project> favoriteList = pService.selectProjectFavoriteList(member.getMemNo());
		
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("myList", myProjectList);
		mav.addObject("publicList", publicAllList);
		mav.addObject("favoriteList", favoriteList);
		mav.setViewName("project/projectAllList");
		return mav;
	}
	
	//프로젝트 상세 페이지
	@RequestMapping(value="/projectDetail.ho")
	public ModelAndView projectDetail(@RequestParam int proNo, @SessionAttribute("member") Member member, @RequestParam String boardType){
		//프로젝트 정보 가져오기
		Project p = pService.selectOneProject(proNo);
		
		//프로젝트 게시물 가져오기
		ArrayList<ProjectBoard> boardList = pService.selectProjectBoardList(proNo);
		
		//프로젝트 게시물의 댓글 가져오기
		ArrayList<ProjectComment> commentList = pService.selectBoardCommentList(proNo);
		
		//프로젝트 게시물 작성자 정보 가져오기
		ArrayList<Member> boardMemberList = mService.selectProjectBoardMemberList(proNo);
		
		//프로젝트  멤버 리스트 가져오기
		ArrayList<Member> projectMemberList = mService.selectProjectMemberList(proNo);

		//프로젝트 관리자 목록 가져오기
		ArrayList<ProjectMember> projectMgrList = pService.selectProjectMemberList(proNo);
		
		//즐겨찾기 목록 가져오기
		ArrayList<Project> favoriteList = pService.selectProjectFavoriteList(member.getMemNo());
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("project", p);
		mav.addObject("boardList", boardList);
		mav.addObject("boardMemberList", boardMemberList);
		mav.addObject("projectMemberList", projectMemberList);
		mav.addObject("projectMgrList", projectMgrList);
		mav.addObject("commentList", commentList);
		mav.addObject("favoriteList", favoriteList);
		mav.addObject("boardType", boardType);
		mav.setViewName("project/projectDetail");
		return mav;
	}
	
	// 프로젝트 게시물 작성 페이지
	@RequestMapping(value="/projectBoardWrite.ho")
	public ModelAndView projectBoardWrite(@RequestParam int proNo, @SessionAttribute("member") Member member){
		
		//프로젝트 정보 가져오기
		Project p = pService.selectOneProject(proNo);
		

		//프로젝트 게시물 가져오기
		ArrayList<ProjectBoard> boardList = pService.selectProjectBoardList(proNo);
		
		//프로젝트 게시물의 댓글 가져오기
		ArrayList<ProjectComment> commentList = pService.selectBoardCommentList(proNo);
		
		//프로젝트 게시물 작성자 정보 가져오기
		ArrayList<Member> boardMemberList = mService.selectProjectBoardMemberList(proNo);
		
		//프로젝트  멤버 리스트 가져오기
		ArrayList<Member> projectMemberList = mService.selectProjectMemberList(proNo);

		//프로젝트 관리자 목록 가져오기
		ArrayList<ProjectMember> projectMgrList = pService.selectProjectMemberList(proNo);
		
		//즐겨찾기 목록 가져오기
		ArrayList<Project> favoriteList = pService.selectProjectFavoriteList(member.getMemNo());
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("project", p);
		mav.addObject("boardList", boardList);
		mav.addObject("boardMemberList", boardMemberList);
		mav.addObject("projectMemberList", projectMemberList);
		mav.addObject("projectMgrList", projectMgrList);
		mav.addObject("commentList", commentList);
		mav.addObject("favoriteList", favoriteList);
		mav.setViewName("project/projectBoardWrite");
		return mav;
	}
	
	// 새프로젝트 만들기
	@RequestMapping(value="/createProject.ho")
	public ModelAndView createProject(@RequestParam String proSubject,
								@RequestParam String proExp,
								@RequestParam String publicYN,
								HttpSession session){
		
		Project p = new Project();
		p.setProSubject(proSubject);
		p.setProExp(proExp);
		if(publicYN.equals("on")){
			publicYN = "Y";
		}else{
			publicYN = "N";
		}
		
		p.setPublicYN(publicYN.charAt(0));
		Member m = (Member)session.getAttribute("member");
		
		p.setMemNo(m.getMemNo());
		
		int result = pService.insertProject(p);
		ModelAndView mav = new ModelAndView();
		if(result>0){
			//생성한 프로젝트의 넘버가져오기
			Project project = pService.selectOneProjectSubject(p.getProSubject());
			ProjectMember pm = new ProjectMember();
			pm.setProNo(project.getProNo());
			pm.setMemNo(m.getMemNo());
			
			//프로젝트 멤버 테이블에 추가
			int insertMemberResult = pService.insertProjectMemberAdmin(pm);
			if(insertMemberResult>0){
				System.out.println("프로젝트 생성자 멤버 테이블 추가 완료");
			}else{
				System.out.println("프로젝트 생성자 멤버 테이블 추가 실패");
			}
			mav.addObject("msg", "프로젝트 생성 완료");
		}else{
			mav.addObject("msg", "프로젝트 생성 실패");
		}
		mav.addObject("location","/projectAllList.ho");
		mav.setViewName("result");
		
		return mav;
	}
	
	//일반 게시글 올리기
	@RequestMapping(value="/insertProjectBoard.ho")
	public ModelAndView insertProjectBoard(ProjectBoard pb){
		
		int result = pService.insertProjectBoard(pb);
		ModelAndView mav = new ModelAndView();
		
		if(result>0){
			mav.addObject("msg", "게시물 작성 완료");
		}else{
			mav.addObject("msg", "게시물 작성 실패");
		}
		mav.addObject("proNo", pb.getProNo());
		mav.addObject("boardType", "post");
		mav.setViewName("project/projectDetailResult");
		return mav;
	}
	
	//프로젝트 즐겨찾기 등록 ajax
	@RequestMapping(value="/insertProjectFavor.ho")
	public void insertProjectFavor(ProjectFavorite pf, HttpServletResponse response)  throws IOException{
		
		int result = pService.insertProjectFavor(pf);
		if(result>0){
			response.getWriter().print(true);
		}else{
			response.getWriter().print(false);
		}
		
	}
	
	//프로젝트 즐겨찾기 삭제 ajax
	@RequestMapping(value="/deleteProjectFavor.ho")
	public void deleteProjectFavor(ProjectFavorite pf, HttpServletResponse response)  throws IOException{
		
		int result = pService.deleteProjectFavor(pf);
		if(result>0){
			response.getWriter().print(true);
		}else{
			response.getWriter().print(false);
		}
		
	}
	
	//게시물 댓글 작성
	@RequestMapping(value="/insertBoardComment.ho")
	public ModelAndView insertBoardComment(ProjectComment pc, @RequestParam int proNo){
		
		int result = pService.insertBoardComment(pc);
		ModelAndView mav = new ModelAndView();
		if(result>0){
			System.out.println("댓글 작성 성공");
		}else{
			System.out.println("댓글 작성 실패");
		}
		mav.addObject("proNo", proNo);
		mav.addObject("boardType", "post");
		mav.setViewName("project/commentResult");
		
		return mav;
	}
	
	//게시물 댓글 수정
	@RequestMapping(value="/updateProjectComment.ho")
	public ModelAndView updateProjectComment(ProjectComment pc, @RequestParam int proNo){
		
		int result = pService.updateProjectComment(pc);
		ModelAndView mav = new ModelAndView();
		if(result>0){
			System.out.println("댓글 수정 성공");
		}else{
			System.out.println("댓글 수정 실패");
		}
		mav.addObject("proNo", proNo);
		mav.setViewName("project/commentResult");
		
		return mav;
	}
	
	//게시물 댓글 삭제
	@RequestMapping(value="/deleteProjectComment.ho")
	public void deleteProjectComment(@RequestParam int commentNo, HttpServletResponse response)  throws IOException{
		
		int result = pService.deleteProjectComment(commentNo);
		if(result>0){
			response.getWriter().print(true);
		}else{
			response.getWriter().print(false);
		}
	}
	
	//프로젝트 수정
	@RequestMapping(value="/updateProject.ho")
	public ModelAndView updateProject(@RequestParam String proSubject,
								@RequestParam String proExp,
								@RequestParam String publicYN,
								@RequestParam int proNo,
								@RequestParam int memNo,
								HttpSession session){
		Member m = (Member)session.getAttribute("member");
		Project p = new Project();

		ModelAndView mav = new ModelAndView();
		//세션과 프로젝트 생성자가 같다면
		if(m.getMemNo()==memNo){
			if(publicYN.equals("on")){
				publicYN = "Y";
			}else{
				publicYN = "N";
			}
			p.setProSubject(proSubject);
			p.setProExp(proExp);
			p.setPublicYN(publicYN.charAt(0));
			p.setMemNo(m.getMemNo());
			p.setProNo(proNo);
			int result = pService.updateProject(p);
			if(result>0){
				mav.addObject("msg", "프로젝트 수정 완료");
			}else{
				mav.addObject("msg", "프로젝트 수정 실패");
			}
			mav.addObject("proNo", proNo);
			mav.addObject("boardType", "post");
			mav.setViewName("project/projectDetailResult");
		}else{
			mav.addObject("msg", "프로젝트 생성자만 수정이 가능합니다.");
			mav.addObject("proNo", proNo);
			mav.addObject("boardType", "post");
			mav.setViewName("project/projectDetailResult");
		}
		return mav;
	}
	
	//게시물 수정
	@RequestMapping(value="/updateProjectBoard.ho")
	public ModelAndView updateProjectBoard(ProjectBoard pb){
		
		System.out.println(pb);
		int result = pService.updateProjectBoard(pb);
		ModelAndView mav = new ModelAndView();
		
		if(result>0){
			mav.addObject("msg", "게시물 수정 완료");
		}else{
			mav.addObject("msg", "게시물 수정 실패");
		}
		mav.addObject("proNo", pb.getProNo());
		mav.addObject("boardType", "post");
		mav.setViewName("project/projectDetailResult");
		return mav;
	}
	
	//게시물 삭제
	@RequestMapping(value="/deleteProjectBoard.ho")
	public void deleteProjectBoard(@RequestParam int boardNo, HttpServletResponse response)  throws IOException{
		
		int result = pService.deleteProjectBoard(boardNo);
		if(result>0){
			response.getWriter().print(true);
		}else{
			response.getWriter().print(false);
		}
	}
	
	
	//프로젝트 나가기
	@RequestMapping(value="/updateProjectMemberExit.ho")
	public void updateProjectMemberExit(ProjectMember pm, HttpServletResponse response)  throws IOException{
		System.out.println(pm.getMemNo());
		System.out.println(pm.getProNo());
		int result = pService.updateProjectMemberExit(pm);
		if(result>0){
			response.getWriter().print(true);
		}else{
			response.getWriter().print(false);
		}
	}
	
	
	//프로젝트 삭제
	@RequestMapping(value="/deleteProject.ho")
	public void updateProject(@RequestParam int proNo, HttpServletResponse response)  throws IOException{
		int result = pService.deleteProject(proNo);
		if(result>0){
			response.getWriter().print(true);
		}else{
			response.getWriter().print(false);
		}
	}
	
	//관리자 설정
	@RequestMapping(value="/updateProjectMgrSet.ho")
	public void updateProjectMgrSet(ProjectMember pm, HttpServletResponse response)  throws IOException{
		int result = pService.updateProjectMgrSet(pm);
		if(result>0){
			response.getWriter().print(true);
		}else{
			response.getWriter().print(false);
		}
	}
	
	//관리자 설정 해제
	@RequestMapping(value="/updateProjectMgrCancel.ho")
	public void updateProjectMgrCancel(ProjectMember pm, HttpServletResponse response)  throws IOException{
		int result = pService.updateProjectMgrCancel(pm);
		if(result>0){
			response.getWriter().print(true);
		}else{
			response.getWriter().print(false);
		}
	}
	
	//일정 게시물 올리기
	@RequestMapping(value="/insertProjectPlan.ho")
	public ModelAndView insertProjectPlan(ProjectPlan pp){
		System.out.println(pp);
		int result = pService.insertProjectPlan(pp);
		ModelAndView mav = new ModelAndView();
		
		if(result>0){
			mav.addObject("msg", "일정 작성 완료");
		}else{
			mav.addObject("msg", "일정 작성 실패");
		}
		mav.addObject("proNo", pp.getProNo());
		mav.addObject("boardType", "plan");
		mav.setViewName("project/projectDetailResult");
		return mav;
		
	}
	
	
	@RequestMapping(value="/updateProjectComplate.ho")
	public void updateProjectComplate(Project p, HttpServletResponse response)  throws IOException{
		System.out.println(p);
		
		if(p.getCompYN()=='Y'){
			p.setCompYN('N');
		}else{
			p.setCompYN('Y');
		}
		
		int result = pService.updateProjectComplate(p);
		if(result>0){
			response.getWriter().print(true);
		}else{
			response.getWriter().print(false);
		}
	}
	
}
