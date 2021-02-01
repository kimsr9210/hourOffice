package kr.or.houroffice.project.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ProjectController {
	
	@RequestMapping(value="/projectList.do")
	public String projectList(){
		return "/project/projectList";
	}
	
	@RequestMapping(value="/projectAllList.do")
	public String projectAllList(){
		return "/project/projectAllList";
	}
	
	@RequestMapping(value="/projectDetail.do")
	public String projectDetail(){
		return "/project/projectDetail";
	}
	
	@RequestMapping(value="/projectBoardWrite.do")
	public String projectBoardWrite(){
		return "/project/projectBoardWrite";
	}	
}
