package kr.or.houroffice.approval.model.vo;

public class ApprovalRef {
	private int refNo; //참조 번호
	private int docuNo; //결재문서번호
	private int memNo; //사번
	public ApprovalRef() {
		super();
		// TODO Auto-generated constructor stub
	}
	public ApprovalRef(int refNo, int docuNo, int memNo) {
		super();
		this.refNo = refNo;
		this.docuNo = docuNo;
		this.memNo = memNo;
	}
	public int getRefNo() {
		return refNo;
	}
	public void setRefNo(int refNo) {
		this.refNo = refNo;
	}
	public int getDocuNo() {
		return docuNo;
	}
	public void setDocuNo(int docuNo) {
		this.docuNo = docuNo;
	}
	public int getMemNo() {
		return memNo;
	}
	public void setMemNo(int memNo) {
		this.memNo = memNo;
	}
	
}
