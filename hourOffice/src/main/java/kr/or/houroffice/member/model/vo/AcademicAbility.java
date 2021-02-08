package kr.or.houroffice.member.model.vo;

import java.sql.Date;

public class AcademicAbility {
	
	private int memNo;				// 사번
	private Date acaEnrollDate;		// 입학일
	private Date acaGradDate;		// 졸업일
	private String acaSchoolName;	// 학교명
	private String acaMajorName;		// 전공명
	private String acaGrad;			// 졸업여부
	
	public AcademicAbility() {
		super();
		// TODO Auto-generated constructor stub
	}

	public AcademicAbility(int memNo, Date acaEnrollDate, Date acaGradDate, String acaSchoolName, String acaMajorName,
			String acaGrad) {
		super();
		this.memNo = memNo;
		this.acaEnrollDate = acaEnrollDate;
		this.acaGradDate = acaGradDate;
		this.acaSchoolName = acaSchoolName;
		this.acaMajorName = acaMajorName;
		this.acaGrad = acaGrad;
	}

	public int getMemNo() {
		return memNo;
	}

	public void setMemNo(int memNo) {
		this.memNo = memNo;
	}

	public Date getAcaEnrollDate() {
		return acaEnrollDate;
	}

	public void setAcaEnrollDate(Date acaEnrollDate) {
		this.acaEnrollDate = acaEnrollDate;
	}

	public Date getAcaGradDate() {
		return acaGradDate;
	}

	public void setAcaGradDate(Date acaGradDate) {
		this.acaGradDate = acaGradDate;
	}

	public String getAcaSchoolName() {
		return acaSchoolName;
	}

	public void setAcaSchoolName(String acaSchoolName) {
		this.acaSchoolName = acaSchoolName;
	}

	public String getAcaMajorName() {
		return acaMajorName;
	}

	public void setAcaMajorName(String acaMajorName) {
		this.acaMajorName = acaMajorName;
	}

	public String getAcaGrad() {
		return acaGrad;
	}

	public void setAcaGrad(String acaGrad) {
		this.acaGrad = acaGrad;
	}
	

}
