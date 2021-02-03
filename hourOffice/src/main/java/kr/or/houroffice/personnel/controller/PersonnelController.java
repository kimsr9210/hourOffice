package kr.or.houroffice.personnel.controller;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import kr.or.houroffice.member.model.vo.Member;
import kr.or.houroffice.personnel.model.service.PersonnelServiceImpl;

@Controller
public class PersonnelController {
	
	@Autowired
	@Qualifier(value="parsonnelService")
	private PersonnelServiceImpl pService;
	
	@Autowired
	@Qualifier(value="sqlSessionTemplate")
	private SqlSessionTemplate sqlSession;
	
	//사원 전체 주소록 
	@RequestMapping(value = "/addbook.do") 
	public ModelAndView addBook() {
		ArrayList<Member> list = pService.selectAddbook();

		// 데이터를 반환 + 페이지를 이동
		// 1. Model // 데이터 반환만 하기 때문에 return 구문을 통해서 이동할 페이지를 명시 해야 함
		// 2. ModelAndView // 데이터 반환 + 페이지 이동을 정의할 수 있으며, return시 ModelAndView를
		// 리턴해주어야 함

		ModelAndView mav = new ModelAndView();

		mav.addObject("list", list);
		mav.setViewName("personnel/addbook"); // ViewResolver에 의해서 경로가 최종 완성됨
		return mav;
	}

	@RequestMapping(value = "/myaddbook.do")
	public String mybook() {
		return "personnel/myaddbook";
	}

	@RequestMapping(value = "/mypage.do")
	public String mypage() {
		return "personnel/mypage";
	}
	
	//내인사정보
	@RequestMapping(value = "/information.do")
	public String information() {
		return "personnel/information";
	}

}
