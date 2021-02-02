package kr.or.houroffice.approval.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import kr.or.houroffice.approval.model.dao.ApprovalDAO;

@Service("ApprovalService")
public class ApprovalServiceImpl implements ApprovalService {
	
	@Autowired
	@Qualifier(value="ApprovalDAO")
	private ApprovalDAO aprDAO;
}
