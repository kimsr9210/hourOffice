package kr.or.houroffice.partBoard.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PartBoardController {
	
	// 부서별 게시판 all select
	@RequestMapping(value="/allPartBoardPage.ho")
	public String allPartBoardPage(){
		return "/part_board/allPartBoardPage";
	}
	
	// 부서별 게시판 one select
	@RequestMapping(value="/partBoard.ho")
	public String partBoard(){
		return "/part_board/partBoard";
	}
	
	// 부서별 게시판 insert
	@RequestMapping(value="/partBoardAdd.ho")
	public String partBoardAdd(){
		return "/part_board/partBoardAdd";
	}
	
	// 부서별 게시판 update
	@RequestMapping(value="/partBoardModify.ho")
	public String partBoardModify(){
		return "/part_board/partBoardModify";
	}
}
