package kr.or.houroffice.personnel.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.servlet.ModelAndView;

import kr.or.houroffice.common.PageList;
import kr.or.houroffice.member.model.vo.Member;
import kr.or.houroffice.personnel.model.service.PersonnelServiceImpl;
import kr.or.houroffice.personnel.model.vo.Contact;
import kr.or.houroffice.personnel.model.vo.MemDept;

@Controller
public class PersonnelController {

	@Autowired
	@Qualifier(value = "parsonnelService")
	private PersonnelServiceImpl pService;

	@Autowired
	@Qualifier(value = "sqlSessionTemplate")
	private SqlSessionTemplate sqlSession;
	
	//사내 주소록, 검색(search)
	@RequestMapping(value = "/addbook.ho")
	public ModelAndView addbookSearch(Member m, HttpServletRequest request, ModelAndView mav) {
		PageList<Member> result = pService.addbookSearch(request);
		
		// 데이터를 반환 + 페이지를 이동
		// 1. Model // 데이터 반환만 하기 때문에 return 구문을 통해서 이동할 페이지를 명시 해야 함
		// 2. ModelAndView // 데이터 반환 + 페이지 이동을 정의할 수 있으며, return시 ModelAndView를 리턴해주어야 함
		mav.addObject("result", result);
		mav.setViewName("personnel/addbook"); // ViewResolver에 의해서 경로가 최종 완성됨
		return mav;
	}

	//개인주소록, 검색(search)
	@RequestMapping(value = "/myaddbook.ho")
	public ModelAndView myaddbookSearch(@SessionAttribute("member") Member m, HttpSession session, 
			HttpServletRequest request, ModelAndView mav) {
		
		PageList<Contact> result = pService.myaddbook(request,m.getMemNo());
		mav.addObject("result", result);
		mav.setViewName("personnel/myaddbook");	
		return mav;
	}
	
	//개인주소록 연락처 insert POST 방식
	@RequestMapping(value = "/myaddbook.ho", method = RequestMethod.POST)
	public ResponseEntity<String> myaddbook(@SessionAttribute("member") Member m, @RequestBody Map<String, Object> params) {
		// 다이얼 로그에서 가져온 결과값 출력

		params.put("memNo", m.getMemNo());
		pService.insertMyaddbook(params);
		
		return ResponseEntity.ok("success");
	}

	
	//개인주소록 수정(update)
	@RequestMapping(value = "/myaddbookUpdate.ho", method = RequestMethod.PUT)
	public ResponseEntity<String> updateMyaddbook(@RequestBody Map<String, Object> params){
		System.out.println(params);
		
		//params.put("memNo", m.getMemNo()); //저장
		//params.put("cntNo", m.getCntNo()); //저장
		pService.updateMyaddbook(params);
		return ResponseEntity.ok("success");
		
	}
	
	//개인주소록 삭제(update) @RequestParam(value="ck") String ck,
	@RequestMapping(value = "/myaddbookDelete.ho", method = RequestMethod.DELETE)
	public ResponseEntity<String> myaddbookDelete(@RequestParam String ck, HttpServletRequest request){
		pService.deleteMyaddbook(ck);
		return ResponseEntity.ok("success");
	}

	//내 개인정보 (마이페이지)
	@RequestMapping(value = "/mypage.ho")
	public ModelAndView mypage(@SessionAttribute("member") Member m, HttpSession session) {
		MemDept md = pService.mypage(m.getMemNo());
		ModelAndView mav = new ModelAndView();
		mav.addObject("memDept", md);
		mav.setViewName("personnel/mypage"); // ViewResolver에 의해서 경로가 최종  완성됨
		return mav;
	}
	
	//내 개인정보 수정(update)
	@RequestMapping(value ="/mypageChange.ho")
	public ResponseEntity<String> mypageChange(HttpServletRequest request, @RequestParam String  ph, @RequestParam String email, @RequestParam String address
			,@RequestParam String addrInput){
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("ph", ph);
		map.put("email", email);
		map.put("addrInput", addrInput);
		map.put("address", address);
		
		System.out.println("mypageChange.ho :::::::::::: 실행 ");
		System.out.println(map.get("ph"));
		System.out.println(map.get("email"));
		System.out.println(map.get("addrInput"));
		System.out.println(map.get("address"));
		
		return ResponseEntity.ok("success");
	}

	//내인사정보
	@RequestMapping(value = "/information.ho")
	public ModelAndView information(@SessionAttribute("member") Member m, HttpSession session) {
		ArrayList<MemDept> list = pService.information(m.getMemNo());
		ModelAndView mav = new ModelAndView();
		mav.addObject("memDept", list);
		mav.setViewName("personnel/information"); // ViewResolver에 의해서 경로가 최종 완성됨
		return mav;
	}

}
