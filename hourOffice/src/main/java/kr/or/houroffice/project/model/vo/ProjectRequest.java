package kr.or.houroffice.project.model.vo;

import java.sql.Timestamp;

public class ProjectRequest {
	private int requestMem;
	private int responseMem;
	private int proNo;
	private Timestamp requestDate;
	private char readYN;
	public ProjectRequest() {
		super();
		// TODO Auto-generated constructor stub
	}
	public ProjectRequest(int requestMem, int responseMem, int proNo, Timestamp requestDate, char readYN) {
		super();
		this.requestMem = requestMem;
		this.responseMem = responseMem;
		this.proNo = proNo;
		this.requestDate = requestDate;
		this.readYN = readYN;
	}
	public int getRequestMem() {
		return requestMem;
	}
	public void setRequestMem(int requestMem) {
		this.requestMem = requestMem;
	}
	public int getResponseMem() {
		return responseMem;
	}
	public void setResponseMem(int responseMem) {
		this.responseMem = responseMem;
	}
	public int getProNo() {
		return proNo;
	}
	public void setProNo(int proNo) {
		this.proNo = proNo;
	}
	public Timestamp getRequestDate() {
		return requestDate;
	}
	public void setRequestDate(Timestamp requestDate) {
		this.requestDate = requestDate;
	}
	public char getReadYN() {
		return readYN;
	}
	public void setReadYN(char readYN) {
		this.readYN = readYN;
	}
	@Override
	public String toString() {
		return "ProjectRequest [requestMem=" + requestMem + ", responseMem=" + responseMem + ", proNo=" + proNo
				+ ", requestDate=" + requestDate + ", readYN=" + readYN + "]";
	}
	
	
}
