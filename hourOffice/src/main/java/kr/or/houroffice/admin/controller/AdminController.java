package kr.or.houroffice.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminController {

	//관리자 페이지 입장
	@RequestMapping(value="/adminMainPage.ho")
	public String AdminMainPage() {
		return "admin/adminMain";
	}//AdminMainPage
	
	//관리자 관리 - 관리자 리스트 CRUD
	@RequestMapping(value="/adminSelectPage.ho")
	public String SelectAdminList() {
		return "admin/adminContents/adminAdministration";
	}//SelectAdminList
	
	//삭제 조회 - 사원 조회
	@RequestMapping(value="/adminDeleteMemberPage.ho")
	public String SelectDeleteMember() {
		return "admin/adminContents/adminDeleteMemberSelect";
	}//SelectDeleteMember
	
	//삭제 조회 - 게시글 조회
	@RequestMapping(value="/adminDeleteNoticePage.ho")
	public String SelectDeleteNotice() {
		return "admin/adminContents/adminDeleteNoticeSelect";
	}//SelectDeleteNotice
	
	//삭제 조회 - 결재안 조회
	@RequestMapping(value="/adminDeleteApprovalPage.ho")
	public String SelectDeleteApproval() {
		return "admin/adminContents/adminDeleteApprovalSelect";
	}//SelectDeleteApproval
	
	//데이터/문서 관리
	@RequestMapping(value="/adminDeleteDataPage.ho")
	public String SelectDeleteData() {
		return "admin/adminContents/adminDeleteData";
	}//SelectDeleteData
		
	//오류 관리 - 비밀번호 초기화
	@RequestMapping(value="/adminPasswordInitPage.ho")
	public String UpdateMemberInitPassword() {
		return "admin/adminContents/adminPasswordInitialization";
	}//UpdateMemberInitPassword
	
	//오류 관리 - 문의 사항
	
}//AdminController
