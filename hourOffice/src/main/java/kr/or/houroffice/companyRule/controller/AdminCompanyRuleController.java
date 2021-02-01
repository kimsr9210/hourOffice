package kr.or.houroffice.companyRule.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminCompanyRuleController {
	
	// 사내 규정 all select
	@RequestMapping(value="/admin_tap_allCompanyRulePage.ho")
	public String allCompanyRulePage(){
		return "/admin_tap/general_affairs_department/allCompanyRulePage";
	}
	// 사내 규정 insert
	@RequestMapping(value="/admin_tap_companyRuleAdd.ho")
	public String companyRuleAdd(){
		return "/admin_tap/general_affairs_department/companyRuleAdd";
	}
	// 사내 규정 update
	@RequestMapping(value="/admin_tap_companyRuleModify.ho")
	public String companyRuleModify(){
		return "/admin_tap/general_affairs_department/companyRuleModify";
	}

}
