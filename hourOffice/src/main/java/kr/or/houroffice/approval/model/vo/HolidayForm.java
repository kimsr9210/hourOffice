package kr.or.houroffice.approval.model.vo;

import java.sql.Timestamp;

public class HolidayForm {
	private int formNo; //양식번호
	private int docuNo; //문서번호
	private char holType; //휴가구분 : N:연차/C:경조사/P:공가/S:병가
	private Timestamp startDate; //휴가시작일
	private Timestamp endDate; //휴가종료일
	private char afternoonOff; //반차여부 A:전일/M:오전/P:오후
	private String reasons; //휴가사유
	public HolidayForm() {
		super();
		// TODO Auto-generated constructor stub
	}
	public HolidayForm(int formNo, int docuNo, char holType, Timestamp startDate, Timestamp endDate, char afternoonOff,
			String reasons) {
		super();
		this.formNo = formNo;
		this.docuNo = docuNo;
		this.holType = holType;
		this.startDate = startDate;
		this.endDate = endDate;
		this.afternoonOff = afternoonOff;
		this.reasons = reasons;
	}
	public int getFormNo() {
		return formNo;
	}
	public void setFormNo(int formNo) {
		this.formNo = formNo;
	}
	public int getDocuNo() {
		return docuNo;
	}
	public void setDocuNo(int docuNo) {
		this.docuNo = docuNo;
	}
	public char getHolType() {
		return holType;
	}
	public void setHolType(char holType) {
		this.holType = holType;
	}
	public Timestamp getStartDate() {
		return startDate;
	}
	public void setStartDate(Timestamp startDate) {
		this.startDate = startDate;
	}
	public Timestamp getEndDate() {
		return endDate;
	}
	public void setEndDate(Timestamp endDate) {
		this.endDate = endDate;
	}
	public char getAfternoonOff() {
		return afternoonOff;
	}
	public void setAfternoonOff(char afternoonOff) {
		this.afternoonOff = afternoonOff;
	}
	public String getReasons() {
		return reasons;
	}
	public void setReasons(String reasons) {
		this.reasons = reasons;
	}
	
}
