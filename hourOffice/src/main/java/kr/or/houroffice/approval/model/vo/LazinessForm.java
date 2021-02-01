package kr.or.houroffice.approval.model.vo;

import java.sql.Timestamp;

public class LazinessForm {
	private int formNo; //양식번호
	private int docuNo; //문서번호
	private String dept; //부서
	private String position; //직위
	private String name; //이름
	private Timestamp lazyDate; //지각/불참일
	private String reasons; //지각/불참사유
	public LazinessForm() {
		super();
		// TODO Auto-generated constructor stub
	}
	public LazinessForm(int formNo, int docuNo, String dept, String position, String name, Timestamp lazyDate,
			String reasons) {
		super();
		this.formNo = formNo;
		this.docuNo = docuNo;
		this.dept = dept;
		this.position = position;
		this.name = name;
		this.lazyDate = lazyDate;
		this.reasons = reasons;
	}
	public int getFormNo() {
		return formNo;
	}
	public void setFormNo(int formNo) {
		this.formNo = formNo;
	}
	public int getDocuNo() {
		return docuNo;
	}
	public void setDocuNo(int docuNo) {
		this.docuNo = docuNo;
	}
	public String getDept() {
		return dept;
	}
	public void setDept(String dept) {
		this.dept = dept;
	}
	public String getPosition() {
		return position;
	}
	public void setPosition(String position) {
		this.position = position;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Timestamp getLazyDate() {
		return lazyDate;
	}
	public void setLazyDate(Timestamp lazyDate) {
		this.lazyDate = lazyDate;
	}
	public String getReasons() {
		return reasons;
	}
	public void setReasons(String reasons) {
		this.reasons = reasons;
	}
	
}
