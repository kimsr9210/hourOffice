package kr.or.houroffice.personnel.model.service;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import kr.or.houroffice.member.model.vo.Member;

public interface PersonnelService {
	
	public ArrayList<Member> selectAddbook();

}
