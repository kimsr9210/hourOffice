package kr.or.houroffice.project.model.vo;

import java.sql.Date;
import java.sql.Timestamp;

public class ProjectWork {
	private int workNo;
	private int proNo;
	private int memNo;
	private String title;
	private String workCon;
	private Date workDay;
	private Timestamp workDate;
	private int workComp;
	private char delYN;
	public ProjectWork() {
		super();
		// TODO Auto-generated constructor stub
	}
	public ProjectWork(int workNo, int proNo, int memNo, String title, String workCon, Date workDay, Timestamp workDate,
			int workComp, char delYN) {
		super();
		this.workNo = workNo;
		this.proNo = proNo;
		this.memNo = memNo;
		this.title = title;
		this.workCon = workCon;
		this.workDay = workDay;
		this.workDate = workDate;
		this.workComp = workComp;
		this.delYN = delYN;
	}
	public int getWorkNo() {
		return workNo;
	}
	public void setWorkNo(int workNo) {
		this.workNo = workNo;
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
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getWorkCon() {
		return workCon;
	}
	public void setWorkCon(String workCon) {
		this.workCon = workCon;
	}
	public Date getWorkDay() {
		return workDay;
	}
	public void setWorkDay(Date workDay) {
		this.workDay = workDay;
	}
	public Timestamp getWorkDate() {
		return workDate;
	}
	public void setWorkDate(Timestamp workDate) {
		this.workDate = workDate;
	}
	public int getWorkComp() {
		return workComp;
	}
	public void setWorkComp(int workComp) {
		this.workComp = workComp;
	}
	public char getDelYN() {
		return delYN;
	}
	public void setDelYN(char delYN) {
		this.delYN = delYN;
	}
	@Override
	public String toString() {
		return "ProjectWork [workNo=" + workNo + ", proNo=" + proNo + ", memNo=" + memNo + ", title=" + title
				+ ", workCon=" + workCon + ", workDay=" + workDay + ", workDate=" + workDate + ", workComp=" + workComp
				+ ", delYN=" + delYN + "]";
	}
	
	
}
