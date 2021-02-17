package kr.or.houroffice.timecard.controller;


import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
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
	public String work(@SessionAttribute("member") Member m, HttpServletRequest request) {
		//ArrayList<Attendance> list = tService.selectWork(request,m.getMemNo());
		
//		ModelAndView mav = new ModelAndView();
//		mav.setViewName("timeCard/work"); // ViewResolver에 의해서 경로가 최종 완성됨
		return "timeCard/work";
	}
	
	//근태 조회 (AJAX)
	@RequestMapping(value ="/workSearch.ho")
	public @ResponseBody ResponseEntity<Object> workSearch(@SessionAttribute("member") Member m, HttpServletRequest request,
			@RequestParam String startDate,
			@RequestParam String endDate) {
		Map<String,Object> result = tService.selectWork(startDate,endDate,m.getMemNo());
		return new ResponseEntity<Object>(result,HttpStatus.OK);
	}
	
	@RequestMapping(value ="/test.ho")
	public String test() {
		return "personnel/test";
	}
}
