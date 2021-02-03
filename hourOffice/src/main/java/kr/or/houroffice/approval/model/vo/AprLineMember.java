package kr.or.houroffice.approval.model.vo;

public class AprLineMember { //결재선 목록 조회용 객체
	private int memNo; 
	private String memPosition;
	private String memName;
	private String deptCode;
	private String deptName;
	public AprLineMember() {
		super();
		// TODO Auto-generated constructor stub
	}
	public AprLineMember(int memNo, String memPosition, String memName, String deptCode, String deptName) {
		super();
		this.memNo = memNo;
		this.memPosition = memPosition;
		this.memName = memName;
		this.deptCode = deptCode;
		this.deptName = deptName;
	}
	public int getMemNo() {
		return memNo;
	}
	public void setMemNo(int memNo) {
		this.memNo = memNo;
	}
	public String getMemPosition() {
		return memPosition;
	}
	public void setMemPosition(String memPosition) {
		this.memPosition = memPosition;
	}
	public String getMemName() {
		return memName;
	}
	public void setMemName(String memName) {
		this.memName = memName;
	}
	public String getDeptCode() {
		return deptCode;
	}
	public void setDeptCode(String deptCode) {
		this.deptCode = deptCode;
	}
	public String getDeptName() {
		return deptName;
	}
	public void setDeptName(String deptName) {
		this.deptName = deptName;
	}
}
