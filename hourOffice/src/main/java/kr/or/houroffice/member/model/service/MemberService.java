package kr.or.houroffice.member.model.service;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Service;

import kr.or.houroffice.member.model.dao.MemberDAO;
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

}
