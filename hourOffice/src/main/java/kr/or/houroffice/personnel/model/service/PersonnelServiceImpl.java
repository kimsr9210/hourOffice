package kr.or.houroffice.personnel.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import kr.or.houroffice.member.model.vo.Member;
import kr.or.houroffice.personnel.model.dao.PersonnelDAO;

@Service("parsonnelService")
public class PersonnelServiceImpl implements PersonnelService {

	@Autowired
	@Qualifier(value = "PersonnelDAO")
	private PersonnelDAO pDAO;

	@Autowired // 의존성주입
	@Qualifier(value = "sqlSessionTemplate")
	private SqlSessionTemplate sqlSession;

	@Override
	public ArrayList<Member> selectAddbook() {
		ArrayList<Member> list = pDAO.selectAddbook(sqlSession);
		return list;
	}

}
