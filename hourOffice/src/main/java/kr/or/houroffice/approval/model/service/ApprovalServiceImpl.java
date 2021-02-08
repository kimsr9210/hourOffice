package kr.or.houroffice.approval.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import kr.or.houroffice.approval.model.dao.ApprovalDAO;
import kr.or.houroffice.approval.model.vo.Approval;
import kr.or.houroffice.approval.model.vo.AprLineMember;
import kr.or.houroffice.member.model.vo.Member;

@Service("ApprovalService")
public class ApprovalServiceImpl implements ApprovalService {
	
	@Autowired
	@Qualifier(value="ApprovalDAO")
	private ApprovalDAO aprDAO;

	@Autowired
	@Qualifier(value="sqlSessionTemplate")
	private SqlSessionTemplate sqlSession;
	
	public ArrayList<Approval> selectApprovalListRequest(int memNo) {
		ArrayList<Approval> list = aprDAO.selectApprovalListRequest(sqlSession,memNo);
		return list;
	}

	public ArrayList<AprLineMember> selectMyDeptPeople(Member m) {
		ArrayList<AprLineMember> list = aprDAO.selectMyDeptPeople(sqlSession,m);
		return list;
	}

	public ArrayList<AprLineMember> selectCCCLinePeople(Member m) {
		ArrayList<AprLineMember> list = aprDAO.selectCCCLinePeople(sqlSession,m);
		return list;
	}
	
	// BY 진원  - 자신이 결재해야할 문서개수 조회
	public int selectMyAprLineCount(int memNo){
		return aprDAO.selectMyAprLineCount(sqlSession, memNo);
	}
}
