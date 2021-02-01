package kr.or.houroffice.notice.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminNoticeController {
	
	// 공지 사항 all select
	@RequestMapping(value="/admin_tap_allNoticePage.ho")
	public String allNoticePage(){
		return "/admin_tap/general_affairs_department/allNoticePage";
	}
	// 공지 사항 insert
	@RequestMapping(value="/admin_tap_noticeAdd.ho")
	public String noticeAdd(){
		return "/admin_tap/general_affairs_department/noticeAdd";
	}
	// 공지 사항 update
	@RequestMapping(value="/admin_tap_noticeModify.ho")
	public String noticeModify(){
		return "/admin_tap/general_affairs_department/noticeModify";
	}
}
