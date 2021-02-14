package kr.or.houroffice.mail.model.vo;

import java.sql.Timestamp;

public class MailReceive {
	private int recNo; // 수신번호
	private int mailNo; // 메일번호
	private int memNo; // 수신인
	private Timestamp recDate; // 읽은 날짜
	private char readYN; // 읽음여부
	private char keepYN; // 보관여부
	private char delYN; // 삭제여부
	
	private char listType; //참조인지 수신인지 구분.
	public MailReceive() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public MailReceive(int recNo, int mailNo, int memNo, Timestamp recDate, char readYN, char keepYN, char delYN,
			char listType) {
		super();
		this.recNo = recNo;
		this.mailNo = mailNo;
		this.memNo = memNo;
		this.recDate = recDate;
		this.readYN = readYN;
		this.keepYN = keepYN;
		this.delYN = delYN;
		this.listType = listType;
	}

	public int getRecNo() {
		return recNo;
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
	public void setRecNo(int recNo) {
		this.recNo = recNo;
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

	public char getListType() {
		return listType;
	}

	public void setListType(char listType) {
		this.listType = listType;
	}
	
}
