package kr.or.houroffice.approval.model.vo;

import java.sql.Timestamp;

public class ApprovalLine {
	private int lineNo; // 결재선 번호
	private int docuNo; // 결재문서번호
	private int memNo; // 사번
	private char aprType; // 결재승인 A:승인/R:반려/W:대기
	private Timestamp aprDate; // 결재승인일
	private String aprComment; // 관련 의견

	public ApprovalLine() {
		super();
		// TODO Auto-generated constructor stub
	}

	public int getLineNo() {
		return lineNo;
	}

	public void setLineNo(int lineNo) {
		this.lineNo = lineNo;
	}

	public int getDocuNo() {
		return docuNo;
	}

	public void setDocuNo(int docuNo) {
		this.docuNo = docuNo;
	}

	public int getMemNo() {
		return memNo;
	}

	public void setMemNo(int memNo) {
		this.memNo = memNo;
	}

	public char getAprType() {
		return aprType;
	}

	public void setAprType(char aprType) {
		this.aprType = aprType;
	}

	public Timestamp getAprDate() {
		return aprDate;
	}

	public void setAprDate(Timestamp aprDate) {
		this.aprDate = aprDate;
	}

	public String getAprComment() {
		return aprComment;
	}

	public void setAprComment(String aprComment) {
		this.aprComment = aprComment;
	}

	public ApprovalLine(int lineNo, int docuNo, int memNo, char aprType, Timestamp aprDate, String aprComment) {
		super();
		this.lineNo = lineNo;
		this.docuNo = docuNo;
		this.memNo = memNo;
		this.aprType = aprType;
		this.aprDate = aprDate;
		this.aprComment = aprComment;
	}

}
