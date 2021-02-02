package kr.or.houroffice.approval.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.or.houroffice.approval.model.service.ApprovalService;

@Controller
public class ApprovalController {

	@Autowired
	@Qualifier(value="ApprovalService")
	private ApprovalService aprService;
	
	//결재 리스트 출력
	@RequestMapping(value="/aprListWait.ho") //결재대기함
	public String approvalListWait(){
		
		return "approval/aprListWait";
	}
	
	@RequestMapping(value="/aprListRequest.ho") //결재요청함
	public String approvalListRequest(){
		
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
	public String approvalFormCCC(){
		
		return "approval/aprFormCCC";
	}
	
	@RequestMapping(value="/aprFormHol.ho") //연차신청
	public String approvalFormHol(){
		
		return "approval/aprFormHol";
	}
	
	@RequestMapping(value="/aprFormLazy.ho") //지각불참사유
	public String approvalFormLazy(){
		
		return "approval/aprFormLazy";
	}
	
	@RequestMapping(value="/aprFormOvt.ho") //연장근무신청
	public String approvalFormOvt(){
		
		return "approval/aprFormOvt";
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
