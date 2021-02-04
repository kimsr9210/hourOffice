package kr.or.houroffice.member.controller;

import java.sql.Date;
import java.util.ArrayList;
import java.util.Enumeration;

import javax.annotation.Resource;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

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
	
	@Autowired
	ServletContext context; // 파일 업로드시 필요한 객체 - 현재 프로젝트에 대한 정보를 가지고있는 객체
	
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
	public String memberSingUp(HttpSession session, HttpServletRequest request, Model model) throws Exception{
		
		if(session.getAttribute("member")!=null){
		
			// 파일이 업로드 되는 경로
			String uploadPath = "/resources/images/profile/";
			// 최대 파일 사이즈를 정하기 위한 값
			int uploadFileSizeLimit = 10*1024*1024; // 최대 10MB
			// 파일 이름 인코딩 값
			String encType = "UTF-8";
			// ServletContext를 이용하여 실제 저장 경로를 가져와야 함
			String realUploadPath = context.getRealPath(uploadPath);
			
			// MultipartRequest 객체 생성 (생성하면서 마지막 5번째 정책 선정 객체 만들기)
			MultipartRequest multi = new MultipartRequest(request,realUploadPath,uploadFileSizeLimit,encType,new DefaultFileRenamePolicy());
			
			// 이 위까지 하면 이미지 업로드 완료
			
			// 멤버 
			Member m = new Member();
			
			m.setMemPosition(multi.getParameter("memPosition"));
			m.setDeptCode(multi.getParameter("deptCode"));
			m.setMemName(multi.getParameter("memName"));
			m.setMemBirth(Date.valueOf(multi.getParameter("memBirth1")+"-"+multi.getParameter("memBirth2")+"-"+multi.getParameter("memBirth3")));
			m.setMemGender(multi.getParameter("memGender").charAt(0));
			m.setMemAddress("("+multi.getParameter("memAddress1")+") "+multi.getParameter("memAddress2"));
			m.setMemPhone(multi.getParameter("memPhone1")+multi.getParameter("memPhone2")+multi.getParameter("memPhone3"));
			m.setMemProfile(multi.getFilesystemName("memProfile"));
			
			System.out.println(m.getMemPosition()+" / "+m.getDeptCode()+" / "+m.getMemName()+" / "+m.getMemBirth()+" / "+m.getMemGender()+" / "+m.getMemAddress()+" / "+m.getMemPhone()+" / "+m.getMemProfile());
			
			
			// 학력
			ArrayList<AcademicAbility> acaList = new ArrayList<AcademicAbility>();
			
			for(int i=0; i<multi.getParameterValues("acaSchoolName").length; i++){
				if(multi.getParameterValues("acaSchoolName")[i]=="" && multi.getParameterValues("acaMajorName")[i]==""){  }else{
					AcademicAbility aca = new AcademicAbility();
					
					if(multi.getParameterValues("acaEnrollDate")[i].charAt(0)!='0'){ aca.setAcaEnrollDate(Date.valueOf(multi.getParameterValues("acaEnrollDate")[i])); }
					if(multi.getParameterValues("acaGradDate")[i].charAt(0)!='0'){ aca.setAcaGradDate(Date.valueOf(multi.getParameterValues("acaGradDate")[i])); }
					aca.setAcaSchoolName(multi.getParameterValues("acaSchoolName")[i]);
					aca.setAcaMajorName(multi.getParameterValues("acaMajorName")[i]);
					aca.setAcaGrad(multi.getParameterValues("acaGrad")[i]);
						System.out.println(aca.getAcaEnrollDate()+" / "+aca.getAcaGradDate()+" / "+aca.getAcaSchoolName()+" / "+aca.getAcaMajorName()+" / "+aca.getAcaGrad());
					acaList.add(aca);
				}
			}
			
					
			
			// 자격증
			ArrayList<License> licList = new ArrayList<License>();
			
			for(int j=0; j<multi.getParameterValues("licName").length; j++){
				if(multi.getParameterValues("licName")[j]=="" && multi.getParameterValues("licOrigin")[j]==""){  }else{
					License lic = new License();
					
					if(multi.getParameterValues("licDate")[j].charAt(0)!='0'){ lic.setLicDate(Date.valueOf(multi.getParameterValues("licDate")[j])); }
					lic.setLicName(multi.getParameterValues("licName")[j]);
					lic.setLicOrigin(multi.getParameterValues("licOrigin")[j]);
						System.out.println(lic.getLicDate()+" / "+lic.getLicName()+" / "+lic.getLicOrigin());
					licList.add(lic);
				}
			}
			
			// 경력
			ArrayList<Career> carList = new ArrayList<Career>();
									
			for(int k=0; k<multi.getParameterValues("carPlace").length; k++){
				if(multi.getParameterValues("carPlace")[k]==null && multi.getParameterValues("carPosition")[k]==null){  }else{
					Career car = new Career();
								
					if(multi.getParameterValues("carJoinDate")[k].charAt(0)!='0'){ car.setCarJoinDate(Date.valueOf(multi.getParameterValues("carJoinDate")[k])); }
					if(multi.getParameterValues("carResignDate")[k].charAt(0)!='0'){ car.setCarResignDate(Date.valueOf(multi.getParameterValues("carResignDate")[k])); }
					car.setCarPlace(multi.getParameterValues("carPlace")[k]);
					car.setCarPosition(multi.getParameterValues("carPosition")[k]);
					car.setCarContent(multi.getParameterValues("carContent")[k]);
						System.out.println(car.getCarJoinDate()+" / "+car.getCarResignDate()+" / "+car.getCarPlace()+" / "+car.getCarPosition()+" / "+car.getCarContent());
					carList.add(car);
				}
			}	
			
			System.out.println("병역 : "+multi.getParameter("milJoinDate"));
			// 병력
			Military mil = new Military();
			mil.setMilServiceType(multi.getParameter("milServiceType"));
			if(multi.getParameter("milJoinDate").charAt(0)!='0'){ mil.setMilJoinDate(Date.valueOf(multi.getParameter("milJoinDate"))); }
			if(multi.getParameter("milLeaveDate").charAt(0)!='0'){ mil.setMilLeaveDate(Date.valueOf(multi.getParameter("milLeaveDate"))); }
			mil.setMilReason(multi.getParameter("milReason"));
				System.out.println(mil.getMilJoinDate()+" / "+mil.getMilLeaveDate()+" / "+mil.getMilReason());
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
	public String organizationChart(HttpSession session, Model model){
		
		ArrayList<Member> list = mService.selectOrganizationChart();
		model.addAttribute("list",list);
		/*
		if(session.getAttribute("member")!=null){
			//return "admin_tap/personnel_department/organizationChart";
		}else{
			return "redirect:login.jsp";
		}*/
		return "admin_tap/personnel_department/organizationChart";
	}
}
