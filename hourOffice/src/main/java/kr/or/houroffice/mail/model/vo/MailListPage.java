package kr.or.houroffice.mail.model.vo;

import kr.or.houroffice.common.Page;

public class MailListPage extends Page {
	private int memNo; //조회할 사번
	
	private char listType; //조회할 페이지목록 유형
	
	//검색을 위한 필드
	private String searchType; //title, member
	private String keyword;
	public MailListPage() {
		super();
		// TODO Auto-generated constructor stub
	}
	public MailListPage(int currentPage, int recordCountPerPage, int naviCountPerPage, int startPage, int endPage,
			int postTotalCount, int pageTotalCount, int startNavi, int endNavi, String url) {
		super(currentPage, recordCountPerPage, naviCountPerPage, startPage, endPage, postTotalCount, pageTotalCount, startNavi,
				endNavi, url);
		// TODO Auto-generated constructor stub
	}
	
	public MailListPage(int memNo, char listType, String searchType, String keyword) {
		super();
		this.memNo = memNo;
		this.listType = listType;
		this.searchType = searchType;
		this.keyword = keyword;
	}
	public int getMemNo() {
		return memNo;
	}
	public void setMemNo(int memNo) {
		this.memNo = memNo;
	}
	public String getSearchType() {
		return searchType;
	}
	public String getKeyword() {
		return keyword;
	}
	public void setSearchType(String searchType) {
		this.searchType = searchType;
	}
	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}
	public char getListType() {
		return listType;
	}
	public void setListType(char listType) {
		this.listType = listType;
	}
	
}
