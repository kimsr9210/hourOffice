package kr.or.houroffice.user.member.model.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import kr.or.houroffice.user.member.model.dao.MemberDAO;
import kr.or.houroffice.user.member.model.vo.Member;

@Service("memberService")
public class MemberService {
	
	@Autowired
	@Qualifier(value="memberDAO")
	private MemberDAO mDAO;
	
	
	@Autowired
	@Qualifier(value="sqlSessionTemplate")
	private SqlSessionTemplate sqlSession;
	


	public Member selectMemberLogin() {
		Member member = mDAO.selectMemberLogin(sqlSession);
		return member;
	}

}
