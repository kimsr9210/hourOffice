package kr.or.houroffice.member.model.vo;

public class Department {
	private String deptCode;
	private String deptName;
	private String deptDelYN;
	public Department() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Department(String deptCode, String deptName, String deptDelYN) {
		super();
		this.deptCode = deptCode;
		this.deptName = deptName;
		this.deptDelYN = deptDelYN;
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
	public String getDeptDelYN() {
		return deptDelYN;
	}
	public void setDeptDelYN(String deptDelYN) {
		this.deptDelYN = deptDelYN;
	}
	
}
