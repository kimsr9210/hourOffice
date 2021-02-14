package kr.or.houroffice.member.model.vo;

import java.sql.Timestamp;

public class Attendance {
	private int memNo;
	private String ymd;	// 근무일
	private Timestamp startDate;
	private Timestamp endDate;
	private String todayWork;
	private String memName; //사원이름
	private String deptName; //부서이름
	public int getMemNo() {
		return memNo;
	}
	public void setMemNo(int memNo) {
		this.memNo = memNo;
	}
	
	public String getYmd() {
		return ymd;
	}
	public void setYmd(String ymd) {
		this.ymd = ymd;
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
	public String getTodayWork() {
		return todayWork;
	}
	public void setTodayWork(String todayWork) {
		this.todayWork = todayWork;
	}
	public String getMemName() {
		return memName;
	}
	public void setMemName(String memName) {
		this.memName = memName;
	}
	public String getDeptName() {
		return deptName;
	}
	public void setDeptName(String deptName) {
		this.deptName = deptName;
	}
	public Attendance(int memNo, Timestamp startDate, Timestamp endDate, String todayWork, String memName,
			String deptName) {
		super();
		this.memNo = memNo;
		this.startDate = startDate;
		this.endDate = endDate;
		this.todayWork = todayWork;
		this.memName = memName;
		this.deptName = deptName;
	}
	public Attendance() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	
	
}
