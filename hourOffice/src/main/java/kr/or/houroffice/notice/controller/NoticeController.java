package kr.or.houroffice.notice.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class NoticeController {
	
	// 공지 사항 all select
	@RequestMapping(value="/allNoticePage.ho")
	public String allNoticePage(){
		return "/notice/allNoticePage";
	}
	
	// 공지 사항 one select
	@RequestMapping(value="/notice.ho")
	public String notice(){
		return "/notice/notice";
	}
}
