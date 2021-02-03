package kr.or.houroffice.member.controller;

import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.or.houroffice.member.model.service.AdminMemberService;
import kr.or.houroffice.member.model.vo.AcademicAbility;
import kr.or.houroffice.member.model.vo.Career;
import kr.or.houroffice.member.model.vo.License;
import kr.or.houroffice.member.model.vo.Member;
import kr.or.houroffice.member.model.vo.Military;

@Controller
public class AdminMemberController {
	
	@Resource(name="adminMemberService")
	private AdminMemberService mService;
	
	// 사원 관리 all select
	@RequestMapping(value="/admin_tap_allListMember.ho")
	public String allListMember(HttpSession session, HttpServletRequest request, Model model){
		
		if(session.getAttribute("member")!=null){ // 로그인 되었다면
			
			
			int countAll = mService.selectCountAllMember();
			
			int currentPage; // 현재 페이지값을 가지고 있는 변수 - 페이징 처리를 위한 변수
			if(request.getParameter("currentPage")==null) {
				currentPage = 1;
			}else {
				currentPage = Integer.parseInt(request.getParameter("currentPage"));
			}	
			int recordCountPerPage = 10; // 한 페이지당 몇개의 게시물이 보이게 될 것인지 - 페이징 처리를 위한 변수
			
			ArrayList<Member> list = mService.selectAllMember(currentPage,recordCountPerPage);
			
	
			// 페이징 처리 - 네비
			int naviCountPerPage = 10; // page Navi값이 몇개씩 보여줄 것인지 - 페이징 처리를 위한 변수
			String pageNavi = mService.getPageNavi(currentPage,recordCountPerPage,naviCountPerPage);
			
			
			if(list != null){
				model.addAttribute("countAll",countAll);
				model.addAttribute("list",list);
				model.addAttribute("pageNavi", pageNavi);
			}
			
			return "admin_tap/personnel_department/allListMember";
			
		}else{ return "redirect:/login.jsp"; }// if문 - session
		
	}
	
	// 사원 등록 - view 페이지
	@RequestMapping(value="/admin_tap_memberJoin.ho")
	public String memberJoin(HttpSession session){
		
		if(session.getAttribute("member")!=null){
			return "admin_tap/personnel_department/memberJoin";
		}else{
			return "redirect:login.jsp";
		}
		
	}
	// 사원 등록 - insert
	@RequestMapping(value="/memberSingUp.ho")
	public String memberSingUp(HttpSession session, HttpServletRequest request, Member m, Model model) throws Exception{
		
//		System.out.println(m.getMemPosition()+" / "+m.getDeptCode()+" / "+m.getMemName()+" / "+" / "+m.getMemGender()+" / "+m.getMemAddress()+" / "+m.getMemPhone());
//		System.out.println(acaList.get(0).getAcaEnrollDate()+" / "+acaList.get(0).getAcaGradDate()+" / "+acaList.get(0).getAcaSchoolName()+" / "+acaList.get(0).getAcaMajorName()+" / "+acaList.get(0).getAcaGrad());
//		System.out.println(licList.get(0).getLicName());
//		System.out.println(carList.get(0).getCarPlace());
//		System.out.println(mil.getMilReason());
		if(session.getAttribute("member")!=null){
			
			// 생년월일
			String memBirth1 = request.getParameter("memBirth1");
			String memBirth2 = request.getParameter("memBirth2");
			String memBirth3 = request.getParameter("memBirth3");
			m.setMemBirth(Date.valueOf(memBirth1+"-"+memBirth2+"-"+memBirth3));
			
			// 현주소
			String address1 = request.getParameter("memAddress1");
			String address2 = request.getParameter("memAddress2");
			m.setMemAddress("("+address1+") "+address2);
			
			// 연락번호
			String phone1 = request.getParameter("memPhone1");
			String phone2 = request.getParameter("memPhone2");
			String phone3 = request.getParameter("memPhone3");
			m.setMemPhone(phone1+phone2+phone3);
			
			m.setMemProfile("없음");
			
			
			
			// 학력
			ArrayList<AcademicAbility> acaList = new ArrayList<AcademicAbility>();
			
			for(int i=0; i<request.getParameterValues("acaSchoolName").length; i++){
				AcademicAbility aca = new AcademicAbility();
				if(request.getParameterValues("acaEnrollDate")[i]!=""){
					aca.setAcaEnrollDate(Date.valueOf(request.getParameterValues("acaEnrollDate")[i]));
				}
				if(request.getParameterValues("acaGradDate")[i]!=""){
					aca.setAcaGradDate(Date.valueOf(request.getParameterValues("acaGradDate")[i]));
				}
				aca.setAcaSchoolName(request.getParameterValues("acaSchoolName")[i]);
				aca.setAcaMajorName(request.getParameterValues("acaMajorName")[i]);
				aca.setAcaGrad(request.getParameterValues("acaGrad")[i]);
					
				acaList.add(aca);
			}
			
			// 경력
			ArrayList<License> licList = new ArrayList<License>();
			
			for(int j=0; j<request.getParameterValues("licName").length; j++){
				License lic = new License();
				if(request.getParameterValues("licDate")[j]!=""){
					lic.setLicDate(Date.valueOf(request.getParameterValues("licDate")[j]));
				}
				lic.setLicName(request.getParameterValues("licName")[j]);
				lic.setLicOrigin(request.getParameterValues("licOrigin")[j]);
					
				licList.add(lic);
			}
			
			// 자격증
			ArrayList<Career> carList = new ArrayList<Career>();
			
			for(int k=0; k<request.getParameterValues("carPlace").length; k++){
				Career car = new Career();
				if(request.getParameterValues("carJoinDate")[k]!=""){
					car.setCarJoinDate(Date.valueOf(request.getParameterValues("carJoinDate")[k]));
				}
				if(request.getParameterValues("carResignDate")[k]!=""){
					car.setCarResignDate(Date.valueOf(request.getParameterValues("carResignDate")[k]));
				}
				car.setCarPlace(request.getParameterValues("carPlace")[k]);
				car.setCarPosition(request.getParameterValues("carPosition")[k]);
				car.setCarContent(request.getParameterValues("carContent")[k]);
				
				carList.add(car);
			}
			
			// 병력
			Military mil = new Military();
			mil.setMilServiceType(request.getParameter("milServiceType"));
			
			if(request.getParameter("milJoinDate")!=""){ 
				mil.setMilJoinDate(Date.valueOf(request.getParameter("milJoinDate")));
			}
			if(request.getParameter("milLeaveDate")!=""){
				mil.setMilLeaveDate(Date.valueOf(request.getParameter("milLeaveDate")));
			}
			mil.setMilReason(request.getParameter("milReason"));
			
			// member 객제, 학력 객체, 자격증 객체, 경력 객체, 병력 객체 넘겨주고 비즈니스 로직 처리
			boolean result = mService.insertMember(m,acaList,licList,carList,mil);
			
			if(result){
				model.addAttribute("msg", "사원 등록이 완료되었습니다.");
			}else{
				model.addAttribute("msg", "사원 등록에 실패하였습니다. \n지속적인 실패 시 관리자에 문의하세요.");
			}
			model.addAttribute("location", "/admin_tap_allListMember.ho");
			return "result";
		}else{
			return "redirect:login.jsp";
		}
		
	}
		
	// 사원 정보 select & update
	@RequestMapping(value="/admin_tap_memberInfo.ho")
	public String memberInfo(HttpSession session){
		
		if(session.getAttribute("member")!=null){
			return "admin_tap/personnel_department/memberInfo";
		}else{
			return "redirect:login.jsp";
		}
		
	}
	
	// 조직도 select
	@RequestMapping(value="/admin_tap_organizationChart.ho")
	public String organizationChart(HttpSession session){
		
		if(session.getAttribute("member")!=null){
			return "admin_tap/personnel_department/organizationChart";
		}else{
			return "redirect:login.jsp";
		}
		
	}
}
