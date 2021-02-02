package kr.or.houroffice.member.controller;

import java.util.ArrayList;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.or.houroffice.member.model.service.AdminMemberService;
import kr.or.houroffice.member.model.vo.Member;

@Controller
public class AdminMemberController {
	
	@Resource(name="adminMemberService")
	private AdminMemberService mService;
	
	// 사원 관리 all select
	@RequestMapping(value="/admin_tap_allListMember.ho")
	public String allListMember(HttpServletRequest request, Model model){
		
		int currentPage; // 현재 페이지값을 가지고 있는 변수 - 페이징 처리를 위한 변수
		if(request.getParameter("currentPage")==null) {
			currentPage = 1;
		}else {
			currentPage = Integer.parseInt(request.getParameter("currentPage"));
		}	
		int recordCountPerPage = 10; // 한 페이지당 몇개의 게시물이 보이게 될 것인지 - 페이징 처리를 위한 변수
		
		ArrayList<Member> list = mService.selectAllMember(currentPage,recordCountPerPage);
		

		// 페이징 처리 - 네비
		int naviCountPerPage = 10; // page Navi값이 몇개씩 보여줄 것인지 - 페이징 처리를 위한 변수
		String pageNavi = mService.getPageNavi(currentPage,recordCountPerPage,naviCountPerPage);
		
		
		if(list != null){
			model.addAttribute("list",list);
			model.addAttribute("pageNavi", pageNavi);
		}
		return "admin_tap/personnel_department/allListMember";
	}
	// 사원 정보 select & update
	@RequestMapping(value="/admin_tap_memberInfo.ho")
	public String memberInfo(){
		return "admin_tap/personnel_department/memberInfo";
	}
	// 사원 등록 insert
	@RequestMapping(value="/admin_tap_memberJoin.ho")
	public String memberJoin(){
		return "admin_tap/personnel_department/memberJoin";
	}
	// 조직도 select
	@RequestMapping(value="/admin_tap_organizationChart.ho")
	public String organizationChart(){
		return "admin_tap/personnel_department/organizationChart";
	}
}
