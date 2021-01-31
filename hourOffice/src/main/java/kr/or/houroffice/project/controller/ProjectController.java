package kr.or.houroffice.project.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ProjectController {
	
	@RequestMapping(value="/projectAllList.do")
	public String projectAllList(){
		System.out.println("실험");
		return "/project/projectAllList";
	}
}
