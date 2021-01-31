package kr.or.houroffice.member.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.or.houroffice.member.model.service.MemberService;
import kr.or.houroffice.member.model.vo.Member;

@Controller
public class MemberController {

	
	@Autowired
	@Qualifier(value="memberService")
	private MemberService mService;
	
	@RequestMapping(value="/memberLogin.do")
	public String memberLogin(HttpSession session){
		System.out.println("실험");
		Member member = mService.selectMemberLogin();
		if(member != null){
			session.setAttribute("member", member);
			return "member/memberLogin";
		} else{

			return "member/memberLogin";
		}
	}
}
