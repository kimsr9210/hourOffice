package kr.or.houroffice.project.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import kr.or.houroffice.member.model.vo.Member;
import kr.or.houroffice.project.model.service.ProjectServiceImpl;
import kr.or.houroffice.project.model.vo.Project;

@Controller
public class ProjectController {
	
	@Autowired
	@Qualifier(value="projectService")
	private ProjectServiceImpl pService;
	
	
	
	@RequestMapping(value="/projectList.do")
	public String projectList(){
		return "/project/projectList";
	}
	
	@RequestMapping(value="/projectAllList.ho")
	public String projectAllList(){
		return "/project/projectAllList";
	}
	
	@RequestMapping(value="/projectDetail.ho")
	public String projectDetail(){
		return "/project/projectDetail";
	}
	
	@RequestMapping(value="/projectBoardWrite.ho")
	public String projectBoardWrite(){
		return "/project/projectBoardWrite";
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
		System.out.println(publicYN);
		if(publicYN.equals("on")){
			publicYN = "Y";
		}else{
			publicYN = "N";
		}
		p.setPublicYN(publicYN.charAt(0));
		Member m = (Member)session.getAttribute("member");
		
		p.setMemNo(m.getMemNo());
		System.out.println("생성자 " + p.getMemNo());
		System.out.println("제목 " + p.getProSubject());
		System.out.println("설명 " + p.getProExp());
		System.out.println("공개여부 : " + p.getPublicYN());
		System.out.println(p);
		
		int result = pService.insertProject(p);
		ModelAndView mav = new ModelAndView();
		if(result>0){
			mav.addObject("msg", "프로젝트 생성 완료");
		}else{
			mav.addObject("msg", "프로젝트 생성 실패");
		}
		mav.setViewName("/project/projectAllList");
		
		return mav;
	}	
}
