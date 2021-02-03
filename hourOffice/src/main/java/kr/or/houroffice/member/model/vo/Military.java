package kr.or.houroffice.member.model.vo;

import java.sql.Date;

public class Military {
	
	private int memNo;
	private String milServiceType;
	private Date milJoinDate;
	private Date milLeaveDate;
	private String milReason;
	public Military() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Military(int memNo, String milServiceType, Date milJoinDate, Date milLeaveDate, String milReason) {
		super();
		this.memNo = memNo;
		this.milServiceType = milServiceType;
		this.milJoinDate = milJoinDate;
		this.milLeaveDate = milLeaveDate;
		this.milReason = milReason;
	}
	public int getMemNo() {
		return memNo;
	}
	public void setMemNo(int memNo) {
		this.memNo = memNo;
	}
	public String getMilServiceType() {
		return milServiceType;
	}
	public void setMilServiceType(String milServiceType) {
		this.milServiceType = milServiceType;
	}
	public Date getMilJoinDate() {
		return milJoinDate;
	}
	public void setMilJoinDate(Date milJoinDate) {
		this.milJoinDate = milJoinDate;
	}
	public Date getMilLeaveDate() {
		return milLeaveDate;
	}
	public void setMilLeaveDate(Date milLeaveDate) {
		this.milLeaveDate = milLeaveDate;
	}
	public String getMilReason() {
		return milReason;
	}
	public void setMilReason(String milReason) {
		this.milReason = milReason;
	}
	
}
