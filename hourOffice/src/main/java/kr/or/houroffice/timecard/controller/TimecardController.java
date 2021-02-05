package kr.or.houroffice.timecard.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class TimecardController {
	
	@RequestMapping(value ="/holiday.ho")
	public String holiday() {
		return "timeCard/holiday";
	}
	
	@RequestMapping(value ="/work.ho")
	public String work() {
		return "timeCard/work";
	}
	
	@RequestMapping(value ="/test.ho")
	public String test() {
		return "personnel/test";
	}

	
	
}
