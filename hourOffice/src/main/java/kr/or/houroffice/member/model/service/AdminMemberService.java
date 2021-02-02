package kr.or.houroffice.member.model.service;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import kr.or.houroffice.member.model.dao.AdminMemberDAO;
import kr.or.houroffice.member.model.vo.Member;

@Service("adminMemberService")
public class AdminMemberService {
	
	@Autowired
	@Qualifier(value="sqlSessionTemplate")
	private SqlSessionTemplate sqlSession;
	
	@Resource(name="adminMemberDAO")
	private AdminMemberDAO mDAO;
	
	// 멤버 전체 수 구하는 메소드
	public int selectCountAllMember() {
		return mDAO.selectCountAllMember(sqlSession);
		
	}
	// 멤버 전체 리스트 (인사관리 사원 조회)
	public ArrayList<Member> selectAllMember(int currentPage, int recordCountPerPage) {
		
		return mDAO.selectAllMember(sqlSession,currentPage,recordCountPerPage);
	}
	// 멤버 전체 리스트 (인사관리 사원 조회) - 페이징 처리 네비 만들기
	public String getPageNavi(int currentPage, int recordCountPerPage, int naviCountPerPage) {
		return mDAO.getPageNavi(sqlSession,currentPage,recordCountPerPage,naviCountPerPage);
	}
	

}
