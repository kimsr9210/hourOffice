package kr.or.houroffice.timecard.model.vo;

import java.sql.Timestamp;

public class HolidayList {
	private int listNo; //내역 연번
	private int memNo; //사번
	private char holType; //휴가구분 N:연차/C:경조사/P:공가/S:병가
	private Timestamp startDate; //휴가시작일
	private Timestamp endDate; //휴가종료일
	private char afternoonOff; //반차여부 반차여부 A:전일/M:오전/P:오후
	private int holCount; //사용갯수
	public HolidayList() {
		super();
		// TODO Auto-generated constructor stub
	}
	public HolidayList(int listNo, int memNo, char holType, Timestamp startDate, Timestamp endDate, char afternoonOff,
			int holCount) {
		super();
		this.listNo = listNo;
		this.memNo = memNo;
		this.holType = holType;
		this.startDate = startDate;
		this.endDate = endDate;
		this.afternoonOff = afternoonOff;
		this.holCount = holCount;
	}
	public int getListNo() {
		return listNo;
	}
	public void setListNo(int listNo) {
		this.listNo = listNo;
	}
	public int getMemNo() {
		return memNo;
	}
	public void setMemNo(int memNo) {
		this.memNo = memNo;
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
	public int getHolCount() {
		return holCount;
	}
	public void setHolCount(int holCount) {
		this.holCount = holCount;
	}
	
}
