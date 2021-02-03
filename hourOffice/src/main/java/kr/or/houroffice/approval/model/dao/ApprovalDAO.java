package kr.or.houroffice.approval.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import kr.or.houroffice.approval.model.vo.Approval;
import kr.or.houroffice.approval.model.vo.AprLineMember;
import kr.or.houroffice.member.model.vo.Member;

@Repository("ApprovalDAO")
public class ApprovalDAO {

	public ArrayList<Approval> selectApprovalListRequest(SqlSessionTemplate sqlSession, int memNo) {
		List list = sqlSession.selectList("approval.selectApprovalListRequest",memNo);
		return (ArrayList<Approval>)list;
	}

	public ArrayList<AprLineMember> selectMyDeptPeople(SqlSessionTemplate sqlSession, Member m) {
		List list = sqlSession.selectList("approval.selectMyDeptPeople",m);
		return (ArrayList<AprLineMember>)list;
	}

	public ArrayList<AprLineMember> selectCCCLinePeople(SqlSessionTemplate sqlSession, Member m) {
		List list = sqlSession.selectList("approval.selectCCCLinePeople",m);
		return (ArrayList<AprLineMember>)list;
	}

}
