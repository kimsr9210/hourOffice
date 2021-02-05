package kr.or.houroffice.member.model.service;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import kr.or.houroffice.member.model.dao.AdminMemberDAO;
import kr.or.houroffice.member.model.vo.AcademicAbility;
import kr.or.houroffice.member.model.vo.Career;
import kr.or.houroffice.member.model.vo.Department;
import kr.or.houroffice.member.model.vo.License;
import kr.or.houroffice.member.model.vo.Member;
import kr.or.houroffice.member.model.vo.Military;

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
	public boolean insertMember(Member m, ArrayList<AcademicAbility> acaList, ArrayList<License> licList, ArrayList<Career> carList, Military mil) {
		
		// 사번 채번
		int memNo = mDAO.selectInsertMemberNo(sqlSession);
		// m 객체에 사번 넣어줌
		m.setMemNo(memNo);
		// member insert
		int result = mDAO.insertMember(sqlSession,m);
		// insert 성공 시
		if(result>0){
			// 학력에 사번 넣어줌
			for(AcademicAbility aca : acaList){
				aca.setMemNo(memNo);
			}
			// 자격증에 사번 넣어줌
			for(License lic : licList){
				lic.setMemNo(memNo);
			}
			// 경력에 사번 넣어줌
			for(Career car : carList){
				car.setMemNo(memNo);
			}
			// 병력에 사번 넣어줌
			mil.setMemNo(memNo);
			
			mDAO.insertInfoAca(sqlSession,acaList);
			mDAO.insertInfoLic(sqlSession,licList);
			mDAO.insertInfoCar(sqlSession,carList);
			mDAO.insertInfoMil(sqlSession,mil);
			
			return true; // true 반환
		}
		
		return false; // 실패시 false 반환
	}
	// 조직도 - select
	public ArrayList<Member> selectOrganizationChart() {
		return mDAO.selectOrganizationChart(sqlSession);
	}
	

}
