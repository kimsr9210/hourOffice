package kr.or.houroffice.project.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.servlet.ModelAndView;

import kr.or.houroffice.member.model.vo.Member;
import kr.or.houroffice.project.model.service.ProjectServiceImpl;
import kr.or.houroffice.project.model.vo.Project;
import kr.or.houroffice.project.model.vo.ProjectBoard;
import kr.or.houroffice.project.model.vo.ProjectMember;

@Controller
public class ProjectController {
	
	@Autowired
	@Qualifier(value="projectService")
	private ProjectServiceImpl pService;
	
	
	
	@RequestMapping(value="/projectList.do")
	public String projectList(){
		return "project/projectList";
	}
	
	//프로젝트 전체 리스트
	@RequestMapping(value="/projectAllList.ho")
	public ModelAndView projectAllList(@SessionAttribute("member") Member member){
		ArrayList<Project> myList = pService.selectAllProject(member.getMemNo());
		ArrayList<Project> publicList = pService.selectPublicProject();
		ModelAndView mav = new ModelAndView();
		mav.addObject("myList", myList);
		mav.addObject("publicList", publicList);
		mav.setViewName("project/projectAllList");
		return mav;
	}
	
	//프로젝트 상세 페이지
	@RequestMapping(value="/projectDetail.ho")
	public ModelAndView projectDetail(@RequestParam int proNo){
		//프로젝트 정보 가져오기
		Project p = pService.selectOneProject(proNo);
		ArrayList<ProjectBoard> boardList = pService.selectProjectBoardList(proNo);
		//프로젝트  멤버 리스트 가져오기
		ArrayList<ProjectMember> projectMemberList = pService.selectProjectMemberList(p.getProNo());
		//가져온 멤버 리스트로 회원 정보 알아오기
		
		
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("project", p);
		mav.addObject("projectMemberList", projectMemberList);
		mav.addObject("boardList", boardList);
		mav.setViewName("project/projectDetail");
		return mav;
	}
	
	// 프로젝트 게시물 작성 페이지
	@RequestMapping(value="/projectBoardWrite.ho")
	public ModelAndView projectBoardWrite(@RequestParam int proNo){
		//프로젝트 정보 가져오기
		Project p = pService.selectOneProject(proNo);
		ModelAndView mav = new ModelAndView();
		mav.addObject("project", p);
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
	
	@RequestMapping(value="/insertProjectBoard.ho")
	public ModelAndView insertProjectBoard(ProjectBoard pb, @RequestParam String type){
		if(type.equals("post")){
			System.out.println(pb.getProNo());
			System.out.println(pb.getBoardText());
			System.out.println(pb.getMemNo());
			System.out.println();
		}
		
		int result = pService.insertProjectBoard(pb);
		ModelAndView mav = new ModelAndView();
		
		if(result>0){
			mav.addObject("msg", "게시물 작성 완료");
		}else{
			mav.addObject("msg", "게시물 작성 실패");
		}
		

		mav.addObject("proNo", pb.getProNo());
		System.out.println(pb.getProNo());
		mav.setViewName("project/boardWriteResult");
		return mav;
	}
}
