package kr.or.houroffice.mail.model.vo;

import java.sql.Timestamp;

public class MailRef {
	private int mailRefNo; // 참조번호
	private int mailNo; // 메일번호
	private int memNo; // 참조 사원
	private Timestamp recDate; // 읽은 날짜
	private char readYN; // 읽음여부
	private char keepYN; // 보관여부
	private char delYN; // 삭제여부
	public MailRef() {
		super();
		// TODO Auto-generated constructor stub
	}
	public MailRef(int mailRefNo, int mailNo, int memNo, Timestamp recDate, char readYN, char keepYN, char delYN) {
		super();
		this.mailRefNo = mailRefNo;
		this.mailNo = mailNo;
		this.memNo = memNo;
		this.recDate = recDate;
		this.readYN = readYN;
		this.keepYN = keepYN;
		this.delYN = delYN;
	}
	public int getMailRefNo() {
		return mailRefNo;
	}
	public int getMailNo() {
		return mailNo;
	}
	public int getMemNo() {
		return memNo;
	}
	public Timestamp getRecDate() {
		return recDate;
	}
	public char getReadYN() {
		return readYN;
	}
	public char getKeepYN() {
		return keepYN;
	}
	public char getDelYN() {
		return delYN;
	}
	public void setMailRefNo(int mailRefNo) {
		this.mailRefNo = mailRefNo;
	}
	public void setMailNo(int mailNo) {
		this.mailNo = mailNo;
	}
	public void setMemNo(int memNo) {
		this.memNo = memNo;
	}
	public void setRecDate(Timestamp recDate) {
		this.recDate = recDate;
	}
	public void setReadYN(char readYN) {
		this.readYN = readYN;
	}
	public void setKeepYN(char keepYN) {
		this.keepYN = keepYN;
	}
	public void setDelYN(char delYN) {
		this.delYN = delYN;
	}

}
