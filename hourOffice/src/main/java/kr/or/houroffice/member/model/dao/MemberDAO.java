package kr.or.houroffice.member.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import kr.or.houroffice.member.model.vo.Member;

@Repository("memberDAO")
public class MemberDAO {

	public Member loginMember(SqlSessionTemplate sqlSession, Member m) {
		Member member = sqlSession.selectOne("member.loginMember", m);
		return member;
	}

	public Member selectOneAsMemNo(SqlSessionTemplate sqlSession, int memNo) {
		return sqlSession.selectOne("member.selectOneAsMemNo", memNo);
	}

}
