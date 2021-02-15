package kr.or.houroffice.main.model.service;

import java.util.ArrayList;

import kr.or.houroffice.main.model.vo.AllNotice;
import kr.or.houroffice.main.model.vo.CompanyRule;

public interface MainService {
	public ArrayList<AllNotice> selectAllNotice();
	public ArrayList<CompanyRule> selectAllRule();
}
