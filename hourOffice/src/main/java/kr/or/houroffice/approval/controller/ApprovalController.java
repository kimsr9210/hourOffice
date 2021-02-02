package kr.or.houroffice.approval.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttribute;

import kr.or.houroffice.approval.model.service.ApprovalServiceImpl;
import kr.or.houroffice.approval.model.vo.Approval;
import kr.or.houroffice.approval.model.vo.AprLineMember;
import kr.or.houroffice.member.model.vo.Member;

@Controller
public class ApprovalController {

	@Autowired
	@Qualifier(value="ApprovalService")
	private ApprovalServiceImpl aprService;
	
	//오늘 날짜 구하기
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
	String today = sdf.format(new Date());
	
	
	//결재 리스트 출력
	@RequestMapping(value="/aprListWait.ho") //결재대기함
	public String approvalListWait(){
		
		return "approval/aprListWait";
	}
	
	@RequestMapping(value="/aprListRequest.ho") //결재요청함
	public String approvalListRequest(@SessionAttribute("member") Member m, Model model){
		int memNo = m.getMemNo();
		//페이징 처리해서 데려와야 함. 일단 작성부터 해야함.
		ArrayList<Approval> list = aprService.selectApprovalListRequest(memNo);
		model.addAttribute("aprList", list);
		
		return "approval/aprListRequest";
	}
	
	@RequestMapping(value="/aprListRef.ho") //참조문서함
	public String approvalListRef(){
		
		return "approval/aprListRef";
	}
	
	@RequestMapping(value="/aprListDept.ho") //부서문서함
	public String approvalListDept(){
		
		return "approval/aprListDept";
	}
	
	//결재 폼 작성
	@RequestMapping(value="/aprFormCCC.ho") //법인카드사용신청
	public String approvalFormCCC(@SessionAttribute("member") Member m, Model model){
		model.addAttribute("today",today);
		
		ArrayList<AprLineMember> list = aprService.selectCCCLinePeople(m);
		
		model.addAttribute("aprLineList",list);
		return "approval/aprFormCCC";
	}
	
	@RequestMapping(value="/insertAprCCC.ho") //법인카드사용 입력
	public String approvalInsertAprCCC(){
		
		
		return "";
	}
	
	@RequestMapping(value="/aprFormHol.ho") //연차신청
	public String approvalFormHol(@SessionAttribute("member") Member m, Model model){
		model.addAttribute("today",today);
		
		ArrayList<AprLineMember> list = aprService.selectMyDeptPeople(m);
		
		model.addAttribute("aprLineList",list);
		return "approval/aprFormHol";
	}
	
	@RequestMapping(value="/insertAprHol.ho") //연차신청 입력
	public String approvalInsertAprHol(){
		
		
		return "";
	}
	
	@RequestMapping(value="/aprFormLazy.ho") //지각불참사유
	public String approvalFormLazy(@SessionAttribute("member") Member m, Model model){
		//제일 내용이 적은 문서..로 시작
		//페이지 로드 : 오늘날짜, 내부서 사람들
		model.addAttribute("today",today);
		
		ArrayList<AprLineMember> list = aprService.selectMyDeptPeople(m);
		
		model.addAttribute("aprLineList",list);
		
		return "approval/aprFormLazy";
	}
	
	@RequestMapping(value="/insertAprLazy.ho") //지각불참사유 입력
	public String approvalInsertAprLazy(){
		
		
		return "";
	}
	
	@RequestMapping(value="/aprFormOvt.ho") //연장근무신청
	public String approvalFormOvt(@SessionAttribute("member") Member m, Model model){
		model.addAttribute("today",today);
		
		ArrayList<AprLineMember> list = aprService.selectMyDeptPeople(m);
		
		model.addAttribute("aprLineList",list);
		return "approval/aprFormOvt";
	}
	
	@RequestMapping(value="/insertAprOvt.ho") //연장근무 입력
	public String approvalInsertAprOvt(){
		
		
		return "";
	}
	
	//결재 대기
	@RequestMapping(value="/aprProCCC.ho") //법인카드사용신청
	public String approvalProCCC(){
		
		return "approval/aprProCCC";
	}
	
	@RequestMapping(value="/aprProHol.ho") //연차신청
	public String approvalProHol(){
		
		return "approval/aprProHol";
	}
	
	@RequestMapping(value="/aprProLazy.ho") //지각불참사유
	public String approvalProLazy(){
		
		return "approval/aprProLazy";
	}
	
	@RequestMapping(value="/aprProOvt.ho") //연장근무신청
	public String approvalProOvt(){
		
		return "approval/aprProOvt";
	}
	
	//결재 조회
	@RequestMapping(value="/aprViewCCC.ho") //법인카드사용신청
	public String approvalViewCCC(){
		
		return "approval/aprViewCCC";
	}
	
	@RequestMapping(value="/aprViewHol.ho") //연차신청
	public String approvalViewHol(){
		
		return "approval/aprViewHol";
	}
	
	@RequestMapping(value="/aprViewLazy.ho") //지각불참사유
	public String approvalViewLazy(){
		
		return "approval/aprViewLazy";
	}
	
	@RequestMapping(value="/aprViewOvt.ho") //연장근무신청
	public String approvalViewOvt(){
		
		return "approval/aprViewOvt";
	}
	
}
