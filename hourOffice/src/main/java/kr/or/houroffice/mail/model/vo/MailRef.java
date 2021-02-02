package kr.or.houroffice.mail.model.vo;

public class MailRef {
	private int mailRefNo; //참조번호
	private int mailNo; //메일번호
	private String refAddress; //참조주소
	public MailRef() {
		super();
		// TODO Auto-generated constructor stub
	}
	public MailRef(int mailRefNo, int mailNo, String refAddress) {
		super();
		this.mailRefNo = mailRefNo;
		this.mailNo = mailNo;
		this.refAddress = refAddress;
	}
	public int getMailRefNo() {
		return mailRefNo;
	}
	public void setMailRefNo(int mailRefNo) {
		this.mailRefNo = mailRefNo;
	}
	public int getMailNo() {
		return mailNo;
	}
	public void setMailNo(int mailNo) {
		this.mailNo = mailNo;
	}
	public String getRefAddress() {
		return refAddress;
	}
	public void setRefAddress(String refAddress) {
		this.refAddress = refAddress;
	}
	
}
