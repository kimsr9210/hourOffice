package kr.or.houroffice.project.model.vo;

import java.sql.Timestamp;

public class ProjectComment {
	private int commentNo;
	private int boardNo;
	private int memNo;
	private String commentCon;
	private Timestamp commentDate;
	private char delYN;
	public ProjectComment() {
		super();
		// TODO Auto-generated constructor stub
	}
	public ProjectComment(int commentNo, int boardNo, int memNo, String commentCon, Timestamp commentDate, char delYN) {
		super();
		this.commentNo = commentNo;
		this.boardNo = boardNo;
		this.memNo = memNo;
		this.commentCon = commentCon;
		this.commentDate = commentDate;
		this.delYN = delYN;
	}
	public int getCommentNo() {
		return commentNo;
	}
	public void setCommentNo(int commentNo) {
		this.commentNo = commentNo;
	}
	public int getBoardNo() {
		return boardNo;
	}
	public void setBoardNo(int boardNo) {
		this.boardNo = boardNo;
	}
	public int getMemNo() {
		return memNo;
	}
	public void setMemNo(int memNo) {
		this.memNo = memNo;
	}
	public String getCommentCon() {
		return commentCon;
	}
	public void setCommentCon(String commentCon) {
		this.commentCon = commentCon;
	}
	public Timestamp getCommentDate() {
		return commentDate;
	}
	public void setCommentDate(Timestamp commentDate) {
		this.commentDate = commentDate;
	}
	public char getDelYN() {
		return delYN;
	}
	public void setDelYN(char delYN) {
		this.delYN = delYN;
	}
	@Override
	public String toString() {
		return "ProjectComment [commentNo=" + commentNo + ", boardNo=" + boardNo + ", memNo=" + memNo + ", commentCon="
				+ commentCon + ", commentDate=" + commentDate + ", delYN=" + delYN + "]";
	}
	
	
	
}
