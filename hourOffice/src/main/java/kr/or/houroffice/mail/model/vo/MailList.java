package kr.or.houroffice.mail.model.vo;

import java.util.ArrayList;

public class MailList {
	private int memNo; //요청한 사번
	private ArrayList<Integer> recMailNoList; //수신 테이블에 해당하는 메일 목록
	private ArrayList<Integer> refMailNoList; //참조 테이블에 해당하는 메일 목록
	public MailList() {
		super();
		// TODO Auto-generated constructor stub
	}
	public MailList(int memNo, ArrayList<Integer> recMailNoList, ArrayList<Integer> refMailNoList) {
		super();
		this.memNo = memNo;
		this.recMailNoList = recMailNoList;
		this.refMailNoList = refMailNoList;
	}
	public int getMemNo() {
		return memNo;
	}
	public ArrayList<Integer> getRecMailNoList() {
		return recMailNoList;
	}
	public ArrayList<Integer> getRefMailNoList() {
		return refMailNoList;
	}
	public void setMemNo(int memNo) {
		this.memNo = memNo;
	}
	public void setRecMailNoList(ArrayList<Integer> recMailNoList) {
		this.recMailNoList = recMailNoList;
	}
	public void setRefMailNoList(ArrayList<Integer> refMailNoList) {
		this.refMailNoList = refMailNoList;
	}
	
}
