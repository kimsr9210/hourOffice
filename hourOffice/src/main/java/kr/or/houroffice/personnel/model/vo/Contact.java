package kr.or.houroffice.personnel.model.vo;

import java.sql.Date;

public class Contact {
	private int memNo;
	private int cntNo;
	private String name;
	private String company;
	private String appointment;
	private String ph;
	private String email;
	private Date enrollDate;
	private char endYN;
	public int getMemNo() {
		return memNo;
	}
	public void setMemNo(int memNo) {
		this.memNo = memNo;
	}
	public int getCntNo() {
		return cntNo;
	}
	public void setCntNo(int cntNo) {
		this.cntNo = cntNo;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getCompany() {
		return company;
	}
	public void setCompany(String company) {
		this.company = company;
	}
	public String getAppointment() {
		return appointment;
	}
	public void setAppointment(String appointment) {
		this.appointment = appointment;
	}
	public String getPh() {
		return ph;
	}
	public void setPh(String ph) {
		this.ph = ph;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public Date getEnrollDate() {
		return enrollDate;
	}
	public void setEnrollDate(Date enrollDate) {
		this.enrollDate = enrollDate;
	}
	public char getEndYN() {
		return endYN;
	}
	public void setEndYN(char endYN) {
		this.endYN = endYN;
	}
	public Contact(int memNo, int cntNo, String name, String company, String appointment, String ph, String email,
			Date enrollDate, char endYN) {
		super();
		this.memNo = memNo;
		this.cntNo = cntNo;
		this.name = name;
		this.company = company;
		this.appointment = appointment;
		this.ph = ph;
		this.email = email;
		this.enrollDate = enrollDate;
		this.endYN = endYN;
	}
	public Contact() {
		super();
		// TODO Auto-generated constructor stub
	}
	
}
