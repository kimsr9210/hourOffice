package kr.or.houroffice.personnel.model.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import kr.or.houroffice.member.model.vo.Member;
import kr.or.houroffice.personnel.model.dao.PersonnelDAO;
import kr.or.houroffice.personnel.model.vo.Contact;
import kr.or.houroffice.personnel.model.vo.MemDept;
import kr.or.houroffice.personnel.model.vo.PageData;
import kr.or.houroffice.personnel.model.vo.PageData2;

@Service("parsonnelService")
public class PersonnelServiceImpl implements PersonnelService {

	@Autowired
	@Qualifier(value = "PersonnelDAO")
	private PersonnelDAO pDAO;

	@Autowired // 의존성주입
	@Qualifier(value = "sqlSessionTemplate") // 세션
	private SqlSessionTemplate sqlSession;

	@Override // 사내주소록
	public ArrayList<Member> selectAddbook() {
		// 페이징처리
		int currentPage;

		/*
		 * if(request.getParameter("currentPage")==null) //보내주는 값이 없을때에는 {
		 * currentPage = 1; //1페이지를 보여주세요 }else { //자유게시판을 사용하는 유저가 2page로 이동하기
		 * 위해서 2page를 클릭하게 된다면? currentPage =
		 * Integer.parseInt(request.getParameter("currentPage")); //request 요청 }
		 */

		ArrayList<Member> list = pDAO.selectAddbook(sqlSession);
		return list;
	}

	// 사원 전체 주소록 검색(서치) 결과
	public PageData2 addbookSearch(HttpServletRequest request) {

		int recordCountPerpage = 20; // 한 페이지당 몇개씩 게시물이 보이게 할 것인지를 정함.

		// 웹상에서 가져온 데이터 저장
		String selectBox = request.getParameter("selectBox");
		String searchText = request.getParameter("searchText");

		System.out.println(searchText); // 가져온 결과값 출력

		// 페이징처리
		int currentPage;
		if (request.getParameter("currentPage") == null) // 보내주는 값이 없을때에는
		{
			currentPage = 1; // 1페이지를 보여주세요
		} else { // 자유게시판을 사용하는 유저가 2page로 이동하기 위해서 2page를 클릭하게 된다면?
			currentPage = Integer.parseInt(request.getParameter("currentPage")); // request
																					// 요청
		}

		ArrayList<Member> list = pDAO.addbookSearch(sqlSession, selectBox, searchText, currentPage, recordCountPerpage);

		// 페이지 네비
		int naviCountPerPage = 5; // PageNavi 값이 몇개씩 보여줄 것인지
		String pageNavi = pDAO.getPageNavi(sqlSession, selectBox, searchText, currentPage, recordCountPerpage,
				naviCountPerPage, list.size());
		
		System.out.println(pageNavi);

		PageData2 addPage = new PageData2();
		addPage.setList(list);
		addPage.setPageNavi(pageNavi);

		return addPage;
	}
	
	//내 개인정보 (마이페이지)
	public MemDept mypage(int memNo) {
		MemDept md = pDAO.mypage(sqlSession,memNo);
		return md;
	}


	// 인사정보
	public MemDept information(int memNo) {
		MemDept md = pDAO.information(sqlSession, memNo);
		return md;
	}


	// 개인주소록 selectlist
	public ArrayList<Contact> selectMyaddbook() {
		ArrayList<Contact> list = pDAO.selectMyaddbook(sqlSession);
		return list;
	}
	
	// 개인주소록에서 다이얼로그에 받아온 값
	public void insertMyaddbook(Map<String, Object> params) {
		pDAO.insertMyaddbook(sqlSession, params);
	}
	
	//개인주소록 수정(update)
	public void updateMyaddbook(Map<String, Object> params) {
		pDAO.updateMyaddbook(sqlSession,params);
	}
	
	//개인주소록 삭제(update)
	public void deleteMyaddbook(String ck) {
		pDAO.deleteMyaddbook(sqlSession,ck);
	}

	// 개인주소록 검색(search)
	public PageData myaddbookSearch(HttpServletRequest request) {

		int recordCountPerpage = 20; // 한 페이지당 몇개씩 게시물이 보이게 할 것인지를 정함.

		// 웹상에서 가져온 데이터 저장
		String selectBox = request.getParameter("selectBox");
		String searchText = request.getParameter("searchText");

		System.out.println(searchText); // 가져온 결과값 출력

		// 페이징처리
		int currentPage;
		if (request.getParameter("currentPage") == null) // 보내주는 값이 없을때에는
		{
			currentPage = 1; // 1페이지를 보여주세요
		} else { // 자유게시판을 사용하는 유저가 2page로 이동하기 위해서 2page를 클릭하게 된다면?
			currentPage = Integer.parseInt(request.getParameter("currentPage")); // request 요청
		}

		ArrayList<Contact> list = pDAO.myaddbookSearch(sqlSession, selectBox, searchText, currentPage, recordCountPerpage);

		// 페이지 네비
		int naviCountPerPage = 5; // PageNavi 값이 몇개씩 보여줄 것인지
		String pageNavi = pDAO.getPageNavi(sqlSession, selectBox, searchText, currentPage, recordCountPerpage,
				naviCountPerPage, list.size());

		 PageData addPage = new PageData();
		 addPage.setList(list);
		 addPage.setPageNavi(pageNavi);
		
		return addPage;
	}
	


}
