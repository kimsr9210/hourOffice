package kr.or.houroffice.timecard.controller;


import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.servlet.ModelAndView;

import kr.or.houroffice.member.model.vo.Attendance;
import kr.or.houroffice.member.model.vo.Member;
import kr.or.houroffice.timecard.model.service.TimeCardServiceImpl;
import kr.or.houroffice.timecard.model.vo.Holiday;



@Controller
public class TimecardController {
	
	@Autowired
	@Qualifier(value="TimeCardService")
	private TimeCardServiceImpl tService;
	
	@Autowired
	@Qualifier(value="sqlSessionTemplate")
	private SqlSessionTemplate sqlSession;
	
	@RequestMapping(value ="/holiday.ho")
	public String holiday() {
		return "timeCard/holiday";
	}
	
	@RequestMapping(value ="/searchHoliday.ho")
	@ResponseBody
	public ArrayList<Holiday> searchHoliday() {
		ArrayList<Holiday> list = tService.selectHoliday();
		return list;
	}
	
	//근태 조회 (리스트)
	@RequestMapping(value ="/work.ho")
	public ModelAndView work(@SessionAttribute("member") Member m, HttpServletRequest request) {
		ArrayList<Attendance> list = tService.selectWork(request,m.getMemNo());
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("list", list);
		mav.setViewName("timeCard/work"); // ViewResolver에 의해서 경로가 최종 완성됨
		return mav;
	}
	
	//근태 조회 (AJAX)
	@RequestMapping(value ="/workSearch.ho")
	public ArrayList<Attendance> workSearch(@SessionAttribute("member") Member m, HttpServletRequest request) {
		
		ArrayList<Attendance> list = tService.selectWork(request,m.getMemNo());
		
		return list;
	}
	
	@RequestMapping(value ="/test.ho")
	public String test() {
		return "personnel/test";
	}
}
