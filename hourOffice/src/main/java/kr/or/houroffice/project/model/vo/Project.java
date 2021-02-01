package kr.or.houroffice.project.model.vo;

import java.sql.Date;

public class Project {

	private int proNo;
	private int memNo;
	private String proSubject;
	private String proExp;
	private Date proDate;
	private char publicYN;
	private char compYN;
	private char delYN;
	private char compDate;
	public Project() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Project(int proNo, int memNo, String proSubject, String proExp, Date proDate, char publicYN, char compYN,
			char delYN, char compDate) {
		super();
		this.proNo = proNo;
		this.memNo = memNo;
		this.proSubject = proSubject;
		this.proExp = proExp;
		this.proDate = proDate;
		this.publicYN = publicYN;
		this.compYN = compYN;
		this.delYN = delYN;
		this.compDate = compDate;
	}
	public int getProNo() {
		return proNo;
	}
	public void setProNo(int proNo) {
		this.proNo = proNo;
	}
	public int getMemNo() {
		return memNo;
	}
	public void setMemNo(int memNo) {
		this.memNo = memNo;
	}
	public String getProSubject() {
		return proSubject;
	}
	public void setProSubject(String proSubject) {
		this.proSubject = proSubject;
	}
	public String getProExp() {
		return proExp;
	}
	public void setProExp(String proExp) {
		this.proExp = proExp;
	}
	public Date getProDate() {
		return proDate;
	}
	public void setProDate(Date proDate) {
		this.proDate = proDate;
	}
	public char getPublicYN() {
		return publicYN;
	}
	public void setPublicYN(char publicYN) {
		this.publicYN = publicYN;
	}
	public char getCompYN() {
		return compYN;
	}
	public void setCompYN(char compYN) {
		this.compYN = compYN;
	}
	public char getDelYN() {
		return delYN;
	}
	public void setDelYN(char delYN) {
		this.delYN = delYN;
	}
	public char getCompDate() {
		return compDate;
	}
	public void setCompDate(char compDate) {
		this.compDate = compDate;
	}
	@Override
	public String toString() {
		return "Project [proNo=" + proNo + ", memNo=" + memNo + ", proSubject=" + proSubject + ", proExp=" + proExp
				+ ", proDate=" + proDate + ", publicYN=" + publicYN + ", compYN=" + compYN + ", delYN=" + delYN
				+ ", compDate=" + compDate + "]";
	}
	
	
}
