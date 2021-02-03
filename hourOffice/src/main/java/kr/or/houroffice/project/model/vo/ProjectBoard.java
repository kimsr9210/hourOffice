package kr.or.houroffice.project.model.vo;

import java.sql.Timestamp;

public class ProjectBoard {
	private int boardNo;
	private int proNo;
	private int memNo;
	private Timestamp boardDate;
	private char delYN;
	private String boardText;
	public ProjectBoard() {
		super();
		// TODO Auto-generated constructor stub
	}
	public ProjectBoard(int boardNo, int proNo, int memNo, Timestamp boardDate, char delYN, String boardText) {
		super();
		this.boardNo = boardNo;
		this.proNo = proNo;
		this.memNo = memNo;
		this.boardDate = boardDate;
		this.delYN = delYN;
		this.boardText = boardText;
	}
	public int getBoardNo() {
		return boardNo;
	}
	public void setBoardNo(int boardNo) {
		this.boardNo = boardNo;
	}
	public int getProNo() {
		return proNo;
	}
	public void setProNo(int proNo) {
		this.proNo = proNo;
	}
	public int getMemNo() {
		return memNo;
	}
	public void setMemNo(int memNo) {
		this.memNo = memNo;
	}
	public Timestamp getBoardDate() {
		return boardDate;
	}
	public void setBoardDate(Timestamp boardDate) {
		this.boardDate = boardDate;
	}
	public char getDelYN() {
		return delYN;
	}
	public void setDelYN(char delYN) {
		this.delYN = delYN;
	}
	public String getBoardText() {
		return boardText;
	}
	public void setBoardText(String boardText) {
		this.boardText = boardText;
	}
	@Override
	public String toString() {
		return "ProjectBoard [boardNo=" + boardNo + ", proNo=" + proNo + ", memNo=" + memNo + ", boardDate=" + boardDate
				+ ", delYN=" + delYN + ", boardText=" + boardText + "]";
	}
	
	
}
