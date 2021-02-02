package kr.or.houroffice.approval.model.vo;

import java.sql.Timestamp;

public class CCCForm {
	private int formNo; //양식번호
	private int docuNo; //문서번호
	private String applyDept; //신청부서
	private String applier; //신청자
	private Timestamp applyDate; //신청일
	private int amounts; //사용금액
	private String usedPlace; //사용처
	private int cardType; //카드종류
	private Timestamp returnDate; //반납예정일
	private String applyPurpose; //신청목적
	public CCCForm() {
		super();
		// TODO Auto-generated constructor stub
	}
	public CCCForm(int formNo, int docuNo, String applyDept, String applier, Timestamp applyDate, int amounts,
			String usedPlace, int cardType, Timestamp returnDate, String applyPurpose) {
		super();
		this.formNo = formNo;
		this.docuNo = docuNo;
		this.applyDept = applyDept;
		this.applier = applier;
		this.applyDate = applyDate;
		this.amounts = amounts;
		this.usedPlace = usedPlace;
		this.cardType = cardType;
		this.returnDate = returnDate;
		this.applyPurpose = applyPurpose;
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
	public String getApplyDept() {
		return applyDept;
	}
	public void setApplyDept(String applyDept) {
		this.applyDept = applyDept;
	}
	public String getApplier() {
		return applier;
	}
	public void setApplier(String applier) {
		this.applier = applier;
	}
	public Timestamp getApplyDate() {
		return applyDate;
	}
	public void setApplyDate(Timestamp applyDate) {
		this.applyDate = applyDate;
	}
	public int getAmounts() {
		return amounts;
	}
	public void setAmounts(int amounts) {
		this.amounts = amounts;
	}
	public String getUsedPlace() {
		return usedPlace;
	}
	public void setUsedPlace(String usedPlace) {
		this.usedPlace = usedPlace;
	}
	public int getCardType() {
		return cardType;
	}
	public void setCardType(int cardType) {
		this.cardType = cardType;
	}
	public Timestamp getReturnDate() {
		return returnDate;
	}
	public void setReturnDate(Timestamp returnDate) {
		this.returnDate = returnDate;
	}
	public String getApplyPurpose() {
		return applyPurpose;
	}
	public void setApplyPurpose(String applyPurpose) {
		this.applyPurpose = applyPurpose;
	}
}
