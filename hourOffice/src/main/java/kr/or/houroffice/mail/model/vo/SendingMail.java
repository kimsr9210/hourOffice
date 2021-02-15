package kr.or.houroffice.mail.model.vo;

import org.springframework.web.multipart.MultipartFile;

public class SendingMail {
	private int mailNo;
	private int sender; //보내는 사람
	private int[] receiver; //받는 사람
	private int[] memRef; //참조인
	private String title; //제목
	private String content; //내용
	private MultipartFile mailFile; //파일 객체 
	private char fileYN; //첨부파일 포함여부
	
	public SendingMail() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public SendingMail(int mailNo, int sender, int[] receiver, int[] memRef, String title, String content,
			MultipartFile mailFile, char fileYN) {
		super();
		this.mailNo = mailNo;
		this.sender = sender;
		this.receiver = receiver;
		this.memRef = memRef;
		this.title = title;
		this.content = content;
		this.mailFile = mailFile;
		this.fileYN = fileYN;
	}

	public int getMailNo() {
		return mailNo;
	}
	
	public void setMailNo(int mailNo) {
		this.mailNo = mailNo;
	}
	public int getSender() {
		return sender;
	}
	public int[] getReceiver() {
		return receiver;
	}
	public int[] getMemRef() {
		return memRef;
	}
	public String getTitle() {
		return title;
	}
	public String getContent() {
		return content;
	}
	public MultipartFile getMailFile() {
		return mailFile;
	}
	public void setSender(int sender) {
		this.sender = sender;
	}
	public void setReceiver(int[] receiver) {
		this.receiver = receiver;
	}
	public void setMemRef(int[] memRef) {
		this.memRef = memRef;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public void setMailFile(MultipartFile mailFile) {
		this.mailFile = mailFile;
	}
	public char getFileYN() {
		return fileYN;
	}
	public void setFileYN(char fileYN) {
		this.fileYN = fileYN;
	}
	
}
