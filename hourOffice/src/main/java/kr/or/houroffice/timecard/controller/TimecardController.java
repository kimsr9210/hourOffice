package kr.or.houroffice.timecard.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class TimecardController {
	
	@RequestMapping(value ="/holiday.do")
	public String holiday() {
		return "timeCard/holiday";
	}
	
	@RequestMapping(value ="/work.do")
	public String work() {
		return "timeCard/work";
	}

	
	
}
