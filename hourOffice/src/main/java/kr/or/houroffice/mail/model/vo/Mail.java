package kr.or.houroffice.mail.model.vo;

import java.sql.Timestamp;

public class Mail {
	private int mailNo; //메일번호
	private int memNo; //보낸사람
	private String title; //제목
	private String content; //내용
	private Timestamp sendDate; //수신일
	private char fileYN; //첨부파일 여부
	private char delYN; //삭제 여부
	public Mail() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Mail(int mailNo, int memNo, String title, String content, Timestamp sendDate, char fileYN, char delYN) {
		super();
		this.mailNo = mailNo;
		this.memNo = memNo;
		this.title = title;
		this.content = content;
		this.sendDate = sendDate;
		this.fileYN = fileYN;
		this.delYN = delYN;
	}

	public int getMailNo() {
		return mailNo;
	}
	public int getMemNo() {
		return memNo;
	}
	public String getTitle() {
		return title;
	}
	public String getContent() {
		return content;
	}
	public Timestamp getSendDate() {
		return sendDate;
	}
	public void setMailNo(int mailNo) {
		this.mailNo = mailNo;
	}
	public void setMemNo(int memNo) {
		this.memNo = memNo;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public void setSendDate(Timestamp sendDate) {
		this.sendDate = sendDate;
	}

	public char getFileYN() {
		return fileYN;
	}

	public char getDelYN() {
		return delYN;
	}

	public void setFileYN(char fileYN) {
		this.fileYN = fileYN;
	}

	public void setDelYN(char delYN) {
		this.delYN = delYN;
	}

}
