package kr.or.houroffice.member.model.service;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Service;

import kr.or.houroffice.member.model.dao.MemberDAO;
import kr.or.houroffice.member.model.vo.Attendance;
import kr.or.houroffice.member.model.vo.Member;

@Service("memberService")
public class MemberService {
	
	@Resource(name="memberDAO")
	private MemberDAO mDAO;
	
	@Resource(name="sqlSessionTemplate")
	private SqlSessionTemplate sqlSession;

	
	public Member loginMember(Member m) { //로그인
		Member member = mDAO.loginMember(sqlSession, m);
		return member;
	}
	
	public Member selectOneAsMemNo(int memNo){ //사번으로 검색
		return mDAO.selectOneAsMemNo(sqlSession, memNo);
	}

	//프로젝트 게시물 작성자 정보
	public ArrayList<Member> selectProjectBoardMemberList(int proNo) {
		ArrayList<Member> boardMemberList = mDAO.selectProjectBoardMemberList(proNo, sqlSession);
		return boardMemberList;
	}

	//프로젝트 참가자 정보
	public ArrayList<Member> selectProjectMemberList(int proNo) {
		ArrayList<Member> projectMemberList = mDAO.selectProjectMemberList(proNo, sqlSession);
		return projectMemberList;
	}

	// 개인 근태기록 조회
	public Attendance selectAttendanceMember(int memNo){
		return mDAO.selectAttendanceMember(sqlSession, memNo);
	}
	
	// 개인 출근 기록
	public int insertAttendanceMember(int memNo) {
		return mDAO.insertAttendanceMember(sqlSession, memNo);
	}

	// 개인 퇴근 기록
	public int updateAttendanceMember(Attendance atten) {
		return mDAO.updateAttendanceMember(sqlSession, atten);
	}

	//코드 게시물 작성자 리스트
	public ArrayList<Member> selectProjectCodeMemberList(int proNo) {
		ArrayList<Member> codeMemberList = mDAO.selectProjectCodeMemberList(proNo, sqlSession);
		return codeMemberList;
	}

	//할일 게시물 작성자 리스트
	public ArrayList<Member> selectProjectWorkMemberList(int proNo) {
		ArrayList<Member> workMemberList = mDAO.selectProjectWorkMemberList(proNo, sqlSession);
		return workMemberList;
	}

	//파일 게시물 작성자 리스트
	public ArrayList<Member> selectProjectFileMemberList(int proNo) {
		ArrayList<Member> fileMemberList = mDAO.selectProjectFileMemberList(proNo, sqlSession);
		return fileMemberList;
	}

	public ArrayList<Member> selectAllMemberList() {
		ArrayList<Member> allMemberList = mDAO.selectAllMemberList(sqlSession);
		return allMemberList;
	}

}
