package kr.or.houroffice.companyRule.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CompanyRuleController {
	
	// 사내 규정 all select
	@RequestMapping(value="/allCompanyRulePage.ho")
	public String allCompanyRulePage(){
		return "/company_rule/allCompanyRulePage";
	}
	
	// 사내 규정 one select
	@RequestMapping(value="/companyRule.ho")
	public String companyRulePage(){
		return "/company_rule/companyRule";
	}

}
