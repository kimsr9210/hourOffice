package kr.or.houroffice.member.model.service;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Service;

import kr.or.houroffice.member.model.dao.MemberDAO;
import kr.or.houroffice.member.model.vo.Member;
import kr.or.houroffice.project.model.vo.ProjectMember;

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

}
