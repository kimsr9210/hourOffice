package kr.or.houroffice.personnel.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.servlet.ModelAndView;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import kr.or.houroffice.common.PageList;
import kr.or.houroffice.member.model.vo.Member;
import kr.or.houroffice.personnel.model.service.PersonnelServiceImpl;
import kr.or.houroffice.personnel.model.vo.Contact;
import kr.or.houroffice.personnel.model.vo.MemDept;

@Controller
public class PersonnelController {

	@Autowired
	@Qualifier(value = "parsonnelService")
	private PersonnelServiceImpl pService;

	@Autowired
	@Qualifier(value = "sqlSessionTemplate")
	private SqlSessionTemplate sqlSession;
	
	@Autowired 
	ServletContext context;  // 파일 업로드시 필요한 객체
	
	//사내 주소록, 검색(search)
	@RequestMapping(value = "/addbook.ho")
	public ModelAndView addbookSearch(Member m, HttpServletRequest request, ModelAndView mav) {
		PageList<Member> result = pService.addbookSearch(request);
		
		// 데이터를 반환 + 페이지를 이동
		// 1. Model // 데이터 반환만 하기 때문에 return 구문을 통해서 이동할 페이지를 명시 해야 함
		// 2. ModelAndView // 데이터 반환 + 페이지 이동을 정의할 수 있으며, return시 ModelAndView를 리턴해주어야 함
		mav.addObject("result", result);
		mav.setViewName("personnel/addbook"); // ViewResolver에 의해서 경로가 최종 완성됨
		return mav;
	}

	//개인주소록, 검색(search)
	@RequestMapping(value = "/myaddbook.ho")
	public ModelAndView myaddbookSearch(@SessionAttribute("member") Member m, HttpSession session, 
			HttpServletRequest request, ModelAndView mav) {
		
		PageList<Contact> result = pService.myaddbook(request,m.getMemNo());
		mav.addObject("result", result);
		mav.setViewName("personnel/myaddbook");	
		return mav;
	}
	
	//개인주소록 연락처 insert POST 방식
	@RequestMapping(value = "/myaddbook.ho", method = RequestMethod.POST)
	public ResponseEntity<String> myaddbook(@SessionAttribute("member") Member m, @RequestBody Map<String, Object> params) {
		// 다이얼 로그에서 가져온 결과값 출력

		params.put("memNo", m.getMemNo());
		pService.insertMyaddbook(params);
		
		return ResponseEntity.ok("success");
	}

	
	//개인주소록 수정(update)
	@RequestMapping(value = "/myaddbookUpdate.ho", method = RequestMethod.PUT)
	public ResponseEntity<String> updateMyaddbook(@RequestBody Map<String, Object> params){
		System.out.println(params);
		
		//params.put("memNo", m.getMemNo()); //저장
		//params.put("cntNo", m.getCntNo()); //저장
		pService.updateMyaddbook(params);
		return ResponseEntity.ok("success");
		
	}
	
	//개인주소록 삭제(update) @RequestParam(value="ck") String ck,
	@RequestMapping(value = "/myaddbookDelete.ho", method = RequestMethod.DELETE)
	public ResponseEntity<String> myaddbookDelete(@RequestParam String ck, HttpServletRequest request){
		pService.deleteMyaddbook(ck);
		return ResponseEntity.ok("success");
	}

	//내 개인정보 (마이페이지)
	@RequestMapping(value = "/mypage.ho")
	public ModelAndView mypage(@SessionAttribute("member") Member m, HttpSession session) {
		MemDept md = pService.mypage(m.getMemNo());
		ModelAndView mav = new ModelAndView();
		mav.addObject("memDept", md);
		mav.setViewName("personnel/mypage"); // ViewResolver에 의해서 경로가 최종  완성됨
		return mav;
	}
	
	//내 개인정보 수정(update)
	@RequestMapping(value ="/mypageChange.ho")
	public ResponseEntity<String> mypageChange(HttpServletRequest request, @RequestParam String  ph, @RequestParam String email, @RequestParam String address
			,@RequestParam String addrInput, HttpSession session){
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("ph", ph);
		map.put("email", email);
		
		//1. 우선 우편번호를 잘라두었으니까 여기서는 다시 합쳐야 할듯 합니다.
		address = "("+addrInput+")"+address;
	
		map.put("addrInput", addrInput);
		map.put("address", address);
		
		//2. memNo를 세션에서 추출하여 같이 map으로 보내주어야 합니다.
		Member m = (Member)session.getAttribute("member");
		
		int memNo = m.getMemNo();
		map.put("memNo", memNo);
			
		System.out.println("mypageChange.ho :::::::::::: 실행 ");
		System.out.println(map);
		
		pService.mypageChange(map);
		return ResponseEntity.ok("success");
	}
	
	//마이페이지 비밀번호 변경
	@RequestMapping(value="/passwordChange.ho" , method = RequestMethod.POST, produces = "application/json; charset=utf8")
	public ResponseEntity<String> inforPwChange(@SessionAttribute("member") Member m, HttpSession session, HttpServletRequest request) throws Exception{
		System.out.println(request.getParameter("memPwd"));
		int result = pService.inforPwChange(request,m.getMemNo());
		// 성공
		if(result > 0){
			return new ResponseEntity<String>(HttpStatus.OK);
		} else {
			return new ResponseEntity<String>(HttpStatus.BAD_REQUEST);
		}
	}
	
	@RequestMapping(value="/photoUpdate.ho",method = RequestMethod.POST)
	public String photoUpdate(@SessionAttribute("member") Member m, HttpSession session, HttpServletRequest request,Model model) throws IOException{
		
		//선생님이  이거쓰라하심
		//MultipartHttpServletRequest multi = (MultipartHttpServletRequest) request;
		
		System.out.println("프로필 사진 수정 호출");
		
		// 파일이 업로드 되는 경로
		String uploadPath = "/resources/images/profile/";
		
		//최대 파일 사이즈를 정하기 위한 값
		int uploadFileSizeLimit = 10*1024*1024; //최대 10MB 까지 업로드 가능
		
		//파일 이름 인코딩 값
		String encType="UTF-8"; 

		
		
		String realUploadPath = context.getRealPath(uploadPath);
		System.out.println("완성된 실제 업로드 절대경로 : " + realUploadPath);
		
		// MultipartRequest 객체 생성 (생성하면서 마지막 5번째 정책 선정 객체 만들기)
		MultipartRequest multi = new MultipartRequest(request,realUploadPath,uploadFileSizeLimit,encType,new DefaultFileRenamePolicy());
		
		// 프로필사진 이름 만들기
		// 확장자 추출
		String memProfile = multi.getFilesystemName("memProfile");
		int pos = memProfile.lastIndexOf( "." );
		String ext = memProfile.substring( pos + 1 );
		// 시간 포맷 및 현재 시간값 가져오기
		SimpleDateFormat formatter = new SimpleDateFormat("yyyyMMddHHmmss"); // 포맷 만들기
		long currentTime = Calendar.getInstance().getTimeInMillis(); // 현재 시간값 가져오기
		String profileRename = formatter.format(currentTime); // 시간값만 일단 넣어둠 
		
		m.setMemProfile(profileRename+"."+ext);
		
		//realUploadPath : 완성된 실제 업로드 경로
		//profileRename : 시간값
		//multi : MultipartRequest 5가지 객체 
		
		int result = pService.photoUpdate(m.getMemNo());

		
		//return "personnel/mypage";
			
		if(result>0){
			// 파일 리네임
			File file  = new File(realUploadPath+"\\"+multi.getFilesystemName("memProfile")); // 파일 연결
			file.renameTo(new File(realUploadPath+"\\"+profileRename+"_"+result+"."+ext)); // 실제 경로에 있는 파일 이름을 바꿈
			model.addAttribute("msg", "사진 등록을 완료하였습니다.");
		}else{
			model.addAttribute("msg", "사진 등록에 실패하였습니다. \n지속적인 실패 시 관리자에 문의하세요.");
		}
		model.addAttribute("location", "personnel/mypage");
		return "result";
}
		

	//내인사정보
	@RequestMapping(value = "/information.ho")
	public ModelAndView information(@SessionAttribute("member") Member m, HttpSession session) {
		ArrayList<MemDept> list = pService.information(m.getMemNo());
		ModelAndView mav = new ModelAndView();
		mav.addObject("memDept", list);
		mav.setViewName("personnel/information"); // ViewResolver에 의해서 경로가 최종 완성됨
		return mav;
	}
	

}
