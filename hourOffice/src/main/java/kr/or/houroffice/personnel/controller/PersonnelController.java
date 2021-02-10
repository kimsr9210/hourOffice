package kr.or.houroffice.personnel.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.servlet.ModelAndView;

import kr.or.houroffice.member.model.vo.Member;
import kr.or.houroffice.personnel.model.service.PersonnelServiceImpl;
import kr.or.houroffice.personnel.model.vo.Contact;
import kr.or.houroffice.personnel.model.vo.MemDept;
import kr.or.houroffice.personnel.model.vo.PageData;
import kr.or.houroffice.personnel.model.vo.PageData2;

@Controller
public class PersonnelController {

	@Autowired
	@Qualifier(value = "parsonnelService")
	private PersonnelServiceImpl pService;

	@Autowired
	@Qualifier(value = "sqlSessionTemplate")
	private SqlSessionTemplate sqlSession;

	//사내 주소록
	@RequestMapping(value = "/addbook.ho")
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

	//개인주소록 selectlist
	@RequestMapping(value = "/myaddbook.ho")
	public ModelAndView selectmyaddbook(@SessionAttribute("member") Member m, HttpSession session,
			HttpServletRequest request) {
		ArrayList<Contact> list = pService.selectMyaddbook();

		ModelAndView mav = new ModelAndView();
		mav.addObject("list", list);
		mav.setViewName("personnel/myaddbook"); // ViewResolver에 의해서 경로가 최종 완성됨
		return mav;
	}
	
	//개인주소록 수정(update)
	@RequestMapping(value = "/myaddbookUpdate.ho", method = RequestMethod.PUT)
	public String updateMyaddbook(@RequestBody Map<String, Object> params){
		System.out.println(params);
		
		//params.put("memNo", m.getMemNo()); //저장
		//params.put("cntNo", m.getCntNo()); //저장
		pService.updateMyaddbook(params);
		return "success";
		
	}
	
	//개인주소록 삭제(update) @RequestParam(value="ck") String ck,
	@RequestMapping(value = "/myaddbookDelete.ho", method = RequestMethod.DELETE)
	public ResponseEntity<String> myaddbookDelete(@RequestParam String ck, HttpServletRequest request){
		pService.deleteMyaddbook(ck);
		return ResponseEntity.ok("success");
	}


	//개인주소록 연락처 insert POST 방식
	@RequestMapping(value = "/myaddbook.ho", method = RequestMethod.POST)
	public ResponseEntity<String> myaddbook(@SessionAttribute("member") Member m, @RequestBody Map<String, Object> params) {
		// 다이얼 로그에서 가져온 결과값 출력

		params.put("memNo", m.getMemNo());
		pService.insertMyaddbook(params);
		
		return ResponseEntity.ok("success");
	}

	//내 개인정보 (마이페이지)
	@RequestMapping(value = "/mypage.ho")
	public ModelAndView mypage(@SessionAttribute("member") Member m, HttpSession session) {
		MemDept memDept = pService.mypage(m.getMemNo());
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("memDept", memDept);
		mav.setViewName("personnel/mypage"); // ViewResolver에 의해서 경로가 최종  완성됨
		return mav;
	}

	//내인사정보
	@RequestMapping(value = "/information.ho")
	public ModelAndView information(@SessionAttribute("member") Member m, HttpSession session) {
		MemDept memDept = pService.information(m.getMemNo());
		ModelAndView mav = new ModelAndView();
		mav.addObject("memDept", memDept);
		mav.setViewName("personnel/information"); // ViewResolver에 의해서 경로가 최종 완성됨
		return mav;
	}

	//사내 주소록 검색(search)
	@RequestMapping(value = "/addbookSearch.ho")
	public String addbookSearch(Member m, HttpServletRequest request, Model model) {

		// 비즈니스로직
		PageData2 data = pService.addbookSearch(request);

		// 결과값 보내주기 ! ㅜ_ㅜ
		if (data != null) {
			model.addAttribute("list",data.getList());
			model.addAttribute("pageNavi", data.getPageNavi());
		}
		return "personnel/addbook";
	}
	
	//개인주소록 검색(search)
	@RequestMapping(value = "/myaddbookSearch.ho")
	public String myaddbookSearch(@SessionAttribute("member") Member m, HttpSession session, 
			HttpServletRequest request, Model model) {
		
		PageData data = pService.myaddbookSearch(request);
		if (data != null) {
			model.addAttribute("list",data.getList());
			model.addAttribute("pageNavi", data.getPageNavi());
		}
		return "personnel/myaddbook";
	}
	

}
