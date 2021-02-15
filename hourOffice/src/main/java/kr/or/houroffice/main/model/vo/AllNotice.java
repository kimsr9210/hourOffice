package kr.or.houroffice.main.model.vo;

import java.sql.Timestamp;

public class AllNotice {
	private int notNo;
	private String notTitle;
	private Timestamp notDate;
	private int memNo;
	private String notWriter;
	private String notContent;
	private int notHits;
	private char notDelYN;
	private Timestamp notDelDate;
	public AllNotice() {
		super();
		// TODO Auto-generated constructor stub
	}
	public AllNotice(int notNo, String notTitle, Timestamp notDate, int memNo, String notWriter, String notContent,
			int notHits, char notDelYN, Timestamp notDelDate) {
		super();
		this.notNo = notNo;
		this.notTitle = notTitle;
		this.notDate = notDate;
		this.memNo = memNo;
		this.notWriter = notWriter;
		this.notContent = notContent;
		this.notHits = notHits;
		this.notDelYN = notDelYN;
		this.notDelDate = notDelDate;
	}
	public int getNotNo() {
		return notNo;
	}
	public void setNotNo(int notNo) {
		this.notNo = notNo;
	}
	public String getNotTitle() {
		return notTitle;
	}
	public void setNotTitle(String notTitle) {
		this.notTitle = notTitle;
	}
	public Timestamp getNotDate() {
		return notDate;
	}
	public void setNotDate(Timestamp notDate) {
		this.notDate = notDate;
	}
	public int getMemNo() {
		return memNo;
	}
	public void setMemNo(int memNo) {
		this.memNo = memNo;
	}
	public String getNotWriter() {
		return notWriter;
	}
	public void setNotWriter(String notWriter) {
		this.notWriter = notWriter;
	}
	public String getNotContent() {
		return notContent;
	}
	public void setNotContent(String notContent) {
		this.notContent = notContent;
	}
	public int getNotHits() {
		return notHits;
	}
	public void setNotHits(int notHits) {
		this.notHits = notHits;
	}
	public char getNotDelYN() {
		return notDelYN;
	}
	public void setNotDelYN(char notDelYN) {
		this.notDelYN = notDelYN;
	}
	public Timestamp getNotDelDate() {
		return notDelDate;
	}
	public void setNotDelDate(Timestamp notDelDate) {
		this.notDelDate = notDelDate;
	}
	
	
}
