package kr.or.houroffice.member.model.vo;

import java.sql.Date;

public class License {

	
	private int memNo;			// 사번
	private Date licDate;		// 취득일
	private String licName;		// 자격증명
	private String licOrigin;	// 시행처
	public License() {
		super();
		// TODO Auto-generated constructor stub
	}
	public License(int memNo, Date licDate, String licName, String licOrigin) {
		super();
		this.memNo = memNo;
		this.licDate = licDate;
		this.licName = licName;
		this.licOrigin = licOrigin;
	}
	public int getMemNo() {
		return memNo;
	}
	public void setMemNo(int memNo) {
		this.memNo = memNo;
	}
	public Date getLicDate() {
		return licDate;
	}
	public void setLicDate(Date licDate) {
		this.licDate = licDate;
	}
	public String getLicName() {
		return licName;
	}
	public void setLicName(String licName) {
		this.licName = licName;
	}
	public String getLicOrigin() {
		return licOrigin;
	}
	public void setLicOrigin(String licOrigin) {
		this.licOrigin = licOrigin;
	}
	
	
}
