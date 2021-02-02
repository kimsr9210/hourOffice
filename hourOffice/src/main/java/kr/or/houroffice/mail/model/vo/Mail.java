package kr.or.houroffice.mail.model.vo;

import java.sql.Timestamp;

import oracle.sql.CLOB;

public class Mail {
	private int mailNo; //메일번호
	private String sender; //보낸사람
	private String receiver; //받는사람
	private String title; //제목
	private Timestamp receiveDate; //수신일
	private CLOB content; //내용
	private char readYN; //읽음여부
	private char keepYN; //보관여부
	private char delYN; //삭제여부
	
	public Mail() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Mail(int mailNo, String sender, String receiver, String title, Timestamp receiveDate, CLOB content,
			char readYN, char keepYN, char delYN) {
		super();
		this.mailNo = mailNo;
		this.sender = sender;
		this.receiver = receiver;
		this.title = title;
		this.receiveDate = receiveDate;
		this.content = content;
		this.readYN = readYN;
		this.keepYN = keepYN;
		this.delYN = delYN;
	}

	public int getMailNo() {
		return mailNo;
	}

	public void setMailNo(int mailNo) {
		this.mailNo = mailNo;
	}

	public String getSender() {
		return sender;
	}

	public void setSender(String sender) {
		this.sender = sender;
	}

	public String getReceiver() {
		return receiver;
	}

	public void setReceiver(String receiver) {
		this.receiver = receiver;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public Timestamp getReceiveDate() {
		return receiveDate;
	}

	public void setReceiveDate(Timestamp receiveDate) {
		this.receiveDate = receiveDate;
	}

	public CLOB getContent() {
		return content;
	}

	public void setContent(CLOB content) {
		this.content = content;
	}

	public char getReadYN() {
		return readYN;
	}

	public void setReadYN(char readYN) {
		this.readYN = readYN;
	}

	public char getKeepYN() {
		return keepYN;
	}

	public void setKeepYN(char keepYN) {
		this.keepYN = keepYN;
	}

	public char getDelYN() {
		return delYN;
	}

	public void setDelYN(char delYN) {
		this.delYN = delYN;
	}
	
}
