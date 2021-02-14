package kr.or.houroffice.mail.model.vo;

import java.sql.Timestamp;

public class MailGetter {
	private int mailNo; //메일번호
	private int sendMemNo; //보낸사람
	private String sendMemName; //보낸사람 이름
	private String sendMemPosition; //보낸 사람 직위
	private int recMemNo; // 받는 사람
	private String recMemName; //받는사람 직위
	private String recMemPosition; //받는사람 직위
	private String title; //제목
	private String content; //콘텐츠
	private Timestamp sendDate; //보낸날
	private Timestamp recDate; //읽은날
	
	private char keepYN; //보관여부
	private char readYN; //읽음 여부
	private char fileYN; //첨부파일 여부
	
	private int attachNo; //파일번호
	private String fileName; //파일이름
	
	private char listType; //반환 구분용
	
	public MailGetter() {
		super();
		// TODO Auto-generated constructor stub
	}

	public MailGetter(int mailNo, int sendMemNo, String sendMemName, String sendMemPosition, int recMemNo,
			String recMemName, String recMemPosition, String title, String content, Timestamp sendDate,
			Timestamp recDate, char keepYN, char readYN, char fileYN, int attachNo, String fileName, char listType) {
		super();
		this.mailNo = mailNo;
		this.sendMemNo = sendMemNo;
		this.sendMemName = sendMemName;
		this.sendMemPosition = sendMemPosition;
		this.recMemNo = recMemNo;
		this.recMemName = recMemName;
		this.recMemPosition = recMemPosition;
		this.title = title;
		this.content = content;
		this.sendDate = sendDate;
		this.recDate = recDate;
		this.keepYN = keepYN;
		this.readYN = readYN;
		this.fileYN = fileYN;
		this.attachNo = attachNo;
		this.fileName = fileName;
		this.listType = listType;
	}

	public int getMailNo() {
		return mailNo;
	}

	public int getSendMemNo() {
		return sendMemNo;
	}

	public String getSendMemName() {
		return sendMemName;
	}

	public String getSendMemPosition() {
		return sendMemPosition;
	}

	public int getRecMemNo() {
		return recMemNo;
	}

	public String getRecMemName() {
		return recMemName;
	}

	public String getRecMemPosition() {
		return recMemPosition;
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

	public Timestamp getRecDate() {
		return recDate;
	}

	public char getKeepYN() {
		return keepYN;
	}

	public char getReadYN() {
		return readYN;
	}

	public char getFileYN() {
		return fileYN;
	}

	public void setMailNo(int mailNo) {
		this.mailNo = mailNo;
	}

	public void setSendMemNo(int sendMemNo) {
		this.sendMemNo = sendMemNo;
	}

	public void setSendMemName(String sendMemName) {
		this.sendMemName = sendMemName;
	}

	public void setSendMemPosition(String sendMemPosition) {
		this.sendMemPosition = sendMemPosition;
	}

	public void setRecMemNo(int recMemNo) {
		this.recMemNo = recMemNo;
	}

	public void setRecMemName(String recMemName) {
		this.recMemName = recMemName;
	}

	public void setRecMemPosition(String recMemPosition) {
		this.recMemPosition = recMemPosition;
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

	public void setRecDate(Timestamp recDate) {
		this.recDate = recDate;
	}

	public void setKeepYN(char keepYN) {
		this.keepYN = keepYN;
	}

	public void setReadYN(char readYN) {
		this.readYN = readYN;
	}

	public void setFileYN(char fileYN) {
		this.fileYN = fileYN;
	}
	public int getAttachNo() {
		return attachNo;
	}
	public String getFileName() {
		return fileName;
	}
	public void setAttachNo(int attachNo) {
		this.attachNo = attachNo;
	}
	public void setFileName(String fileName) {
		this.fileName = fileName;
	}

	public char getListType() {
		return listType;
	}

	public void setListType(char listType) {
		this.listType = listType;
	}

}
