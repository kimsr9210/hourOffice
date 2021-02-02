package kr.or.houroffice.mail.model.vo;

import java.sql.Timestamp;

public class MailFile {
	private int attachNo; //첨부파일번호
	private int mailNo; //메일번호
	private String originalFilename; //원본파일명
	private String changedFilename; //변경파일명
	private String filePath; //파일경로
	private long fileSize; //파일 크기
	private Timestamp uploadDate; //파일 업로드 날짜
	public MailFile() {
		super();
		// TODO Auto-generated constructor stub
	}
	public MailFile(int attachNo, int mailNo, String originalFilename, String changedFilename, String filePath,
			long fileSize, Timestamp uploadDate) {
		super();
		this.attachNo = attachNo;
		this.mailNo = mailNo;
		this.originalFilename = originalFilename;
		this.changedFilename = changedFilename;
		this.filePath = filePath;
		this.fileSize = fileSize;
		this.uploadDate = uploadDate;
	}
	public int getAttachNo() {
		return attachNo;
	}
	public void setAttachNo(int attachNo) {
		this.attachNo = attachNo;
	}
	public int getMailNo() {
		return mailNo;
	}
	public void setMailNo(int mailNo) {
		this.mailNo = mailNo;
	}
	public String getOriginalFilename() {
		return originalFilename;
	}
	public void setOriginalFilename(String originalFilename) {
		this.originalFilename = originalFilename;
	}
	public String getChangedFilename() {
		return changedFilename;
	}
	public void setChangedFilename(String changedFilename) {
		this.changedFilename = changedFilename;
	}
	public String getFilePath() {
		return filePath;
	}
	public void setFilePath(String filePath) {
		this.filePath = filePath;
	}
	public long getFileSize() {
		return fileSize;
	}
	public void setFileSize(long fileSize) {
		this.fileSize = fileSize;
	}
	public Timestamp getUploadDate() {
		return uploadDate;
	}
	public void setUploadDate(Timestamp uploadDate) {
		this.uploadDate = uploadDate;
	}
	
}
