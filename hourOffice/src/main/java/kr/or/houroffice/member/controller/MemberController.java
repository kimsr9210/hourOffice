package kr.or.houroffice.member.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.or.houroffice.member.model.service.MemberService;
import kr.or.houroffice.member.model.vo.Member;

@Controller
public class MemberController {

	
	@Autowired
	@Qualifier(value="memberService")
	private MemberService mService;
	
	@RequestMapping(value="/memberLoginPage.ho")
	public String memberLoginPage(){ // 로그인페이지 이동용 메소드
		return "redirect:/login.jsp";
	}
	
	@RequestMapping(value="/memberLogin.ho")
	public String loginMember(HttpSession session, Model model, Member m){ //로그인 메소드
		Member member = mService.loginMember(m);
		if(member != null){
			session.setAttribute("member", member);
			return "memberMain";
		}else{
			model.addAttribute("msg", "로그인 실패");
			model.addAttribute("location", "/memberLoginPage.ho");
			return "result";
		}
	}
	
	@RequestMapping(value="/memberLogout.ho")
	public String loginSuccess(HttpSession session){ // 로그아웃 메소드
		session.invalidate();
		return "redirect:/index.jsp";
	}
	
}
