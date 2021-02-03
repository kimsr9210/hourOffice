package kr.or.houroffice.main.controller;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttribute;

import kr.or.houroffice.member.model.service.MemberService;
import kr.or.houroffice.member.model.vo.Member;
import kr.or.houroffice.project.model.service.ProjectServiceImpl;
import kr.or.houroffice.project.model.vo.Project;

@Controller
public class MainController {
	@Resource(name="memberService")
	private MemberService mService;
	
	@Resource(name="projectService")
	private ProjectServiceImpl pService;
	
	@RequestMapping(value="/main.ho")
	public String memberLoginPage(@SessionAttribute("member") Member m, Model model){
		ArrayList<Project> publicList = pService.selectPublicProject();
		ArrayList<Project> myList = pService.selectAllProject(m.getMemNo());
		
		model.addAttribute("publicList", publicList);
		model.addAttribute("myList", myList);
		
		return "memberMain";
	}
	
}
