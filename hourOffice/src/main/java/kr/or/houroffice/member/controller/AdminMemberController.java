package kr.or.houroffice.member.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminMemberController {
	
	// 사원 관리 all select
	@RequestMapping(value="/admin_tap_allListMember.ho")
	public String allListMember(){
		return "/admin_tap/personnel_department/allListMember";
	}
	// 사원 정보 select & update
	@RequestMapping(value="/admin_tap_memberInfo.ho")
	public String memberInfo(){
		return "/admin_tap/personnel_department/memberInfo";
	}
	// 사원 등록 insert
	@RequestMapping(value="/admin_tap_memberJoin.ho")
	public String memberJoin(){
		return "/admin_tap/personnel_department/memberJoin";
	}
	// 조직도 select
	@RequestMapping(value="/admin_tap_organizationChart.ho")
	public String organizationChart(){
		return "/admin_tap/personnel_department/organizationChart";
	}
}
