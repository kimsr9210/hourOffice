package kr.or.houroffice.personnel.model.service;

import java.util.ArrayList;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import kr.or.houroffice.common.PageList;
import kr.or.houroffice.member.model.vo.Member;
import kr.or.houroffice.personnel.model.vo.Contact;
import kr.or.houroffice.personnel.model.vo.MemDept;
import kr.or.houroffice.project.model.vo.Project;
import kr.or.houroffice.project.model.vo.ProjectBoard;
import kr.or.houroffice.project.model.vo.ProjectMember;

public interface PersonnelService {
	
	public PageList<Member> addbookSearch(HttpServletRequest request);
	
	public PageList<Contact> myaddbook(HttpServletRequest request, int memNo); 
	public void insertMyaddbook(Map<String, Object> params);
	public void updateMyaddbook(Map<String, Object> params);
	public void deleteMyaddbook(String ck);
	public MemDept mypage(int memNo);
	public ArrayList<MemDept> information(int memNo);
	
}
