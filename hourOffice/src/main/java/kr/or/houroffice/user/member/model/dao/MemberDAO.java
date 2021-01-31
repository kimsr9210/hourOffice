package kr.or.houroffice.user.member.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import kr.or.houroffice.user.member.model.vo.Member;

@Repository("memberDAO")
public class MemberDAO {

	public Member selectMemberLogin(SqlSessionTemplate sqlSession) {
		Member member = sqlSession.selectOne("member.selectMemberLogin");
		return member;
	}

}
