package kr.or.houroffice.member.model.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import kr.or.houroffice.member.model.vo.AcademicAbility;
import kr.or.houroffice.member.model.vo.Career;
import kr.or.houroffice.member.model.vo.License;
import kr.or.houroffice.member.model.vo.Member;
import kr.or.houroffice.member.model.vo.Military;

@Repository("adminMemberDAO")
public class AdminMemberDAO {
	
	// 전체 게시물 구하는 메소드
	public int selectCountAllMember(SqlSessionTemplate sqlSession) {
		return sqlSession.selectOne("member.allMemberCount");
	}
	
	// 전체 멤버 list - select
	public ArrayList<Member> selectAllMember(SqlSessionTemplate sqlSession, int currentPage, int recordCountPerPage) {
		// 페이징 처리 수식
		int start = currentPage * recordCountPerPage - (recordCountPerPage-1);
		int end = currentPage * recordCountPerPage;
		
		HashMap<String, Integer> map = new HashMap<String, Integer>();
		map.put("start", start);
		map.put("end", end);
		List list = sqlSession.selectList("member.allMemberList", map);
		
		return (ArrayList<Member>)list;
	}
	// 전체 멤버 list - 페이징 처리 - 네비
	public String getPageNavi(SqlSessionTemplate sqlSession, int currentPage, int recordCountPerPage, int naviCountPerPage) {
		// 현재 변수 재확인
		// currentPage			: 현재 페이지를 가지고 있는 변수
		// recordCountPerPage	: 한 페이지당 보여질 게시물의 개수
		// naviCountPerPage		: pageNavi가 몇개씩 보여질 것인지에 대한 변수
		int postTotalCount = selectCountAllMember(sqlSession); // 전체 게시물을 구하기 위한 메소드
				
		// 생성될 페이지 개수 구하기
				
		int pageTotalCount; // 전체페이지를 저장하는 변수
		if(postTotalCount % recordCountPerPage > 0){ // 마지막 페이지 숫자 정하는 코드
			pageTotalCount = postTotalCount / recordCountPerPage + 1;
			// ex) pageTotalCount = 108 / 5 + 1 -> 22 Page
		}else {
			pageTotalCount = postTotalCount / recordCountPerPage + 0;
			// ex) pageTotalCount = 105 / 5 + 0 -> 21 Page
		}
				
		// 현재 페이지 번호 구하기
		// startNavi = ((현재페이지-1)/보여질 navi개수) * 보여질navi개수 +1;
		int startNavi = ((currentPage -1) / naviCountPerPage) * naviCountPerPage +1;
		// endNavi = 시작navi번호 + 보여질 navi개수 - 1;
		int endNavi = startNavi + naviCountPerPage - 1;
		// 마지막 페이지 번호가 총 페이지 수보다 높을 때
		if(endNavi > pageTotalCount) {
			endNavi = pageTotalCount;
		}
				
		// 이제 pageNavi의 모양을 구성해야 함
				
		StringBuilder sb = new StringBuilder();
						
		// 만약 첫번째 pageNavi가 아니라면 '<' 모양을 추가해라 (첫번째 pageNavi이면 추가하지 말아라)
		if(startNavi != 1) { //href='/myReviewNote.rw?libraryOwner="+memberId+"&currentPage="+(startNavi-1)+"'
			sb.append("<a class='page-link' href='/admin_tap_allListMember.ho?currentPage="+(startNavi-1)+"'><</a>");
		}
						
		for(int i=startNavi; i<=endNavi; i++) {
			if(i==currentPage) {
				sb.append("<a class='page-link' href='/admin_tap_allListMember.ho?currentPage="+i+"'><B>"+i+"</B></a>");
			}else {
				sb.append("<a class='page-link' href='/admin_tap_allListMember.ho?currentPage="+i+"'>"+i+"</a>");
			}
		}
				
		//만약 마지막 pageNavi가 아니라면 '>' 모양을 추가해라 (마지막 pageNavi이면 추가하지 말아라)
		if(endNavi != pageTotalCount) {
			sb.append("<a class='page-link' href='/admin_tap_allListMember.ho?currentPage="+(startNavi+1)+"'>></a>");
		}
						
		return sb+"";
	}

	////////////////////////////////////////  사원 등록 메소드   ////////////////////////////////////////
	// 관리자탭 (인사관리) - 사원 등록 / 사번 채번 메소드 
	public int selectInsertMemberNo(SqlSessionTemplate sqlSession){
		return sqlSession.selectOne("member.choiceMemberNo");
	}
	// 관리자탭 (인사관리) - 사원 등록
	public int insertMember(SqlSessionTemplate sqlSession, Member m) {		
		return sqlSession.insert("member.signUpMember",m);
	}
	// 관리자탭 (인사관리) - 사원 등록 - 학력 insert
	public int insertInfoAca(SqlSessionTemplate sqlSession, ArrayList<AcademicAbility> acaList) {
		return sqlSession.insert("member.insertAcademicAbility",acaList);
	}
	// 관리자탭 (인사관리) - 사원 등록 - 자격증 insert
	public int insertInfoLic(SqlSessionTemplate sqlSession, ArrayList<License> licList) {
		return sqlSession.insert("member.insertLicense",licList);
	}
	// 관리자탭 (인사관리) - 사원 등록 - 경력 insert
	public int insertInfoCar(SqlSessionTemplate sqlSession, ArrayList<Career> carList) {
		return sqlSession.insert("member.insertCareer",carList);
	}
	// 관리자탭 (인사관리) - 사원 등록 - 병력 insert
	public int insertInfoMil(SqlSessionTemplate sqlSession, Military mil) {
		return sqlSession.insert("member.insertMilitary",mil);
	}
	////////////////////////////////////////사원 등록 메소드   ////////////////////////////////////////
	

}
