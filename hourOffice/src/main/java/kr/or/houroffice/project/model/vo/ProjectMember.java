package kr.or.houroffice.project.model.vo;

public class ProjectMember {
	private int proNo;
	private int memNo;
	private char mgrYN;
	private char delYN;
	public ProjectMember() {
		super();
		// TODO Auto-generated constructor stub
	}
	public ProjectMember(int proNo, int memNo, char mgrYN, char delYN) {
		super();
		this.proNo = proNo;
		this.memNo = memNo;
		this.mgrYN = mgrYN;
		this.delYN = delYN;
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
	public char getMgrYN() {
		return mgrYN;
	}
	public void setMgrYN(char mgrYN) {
		this.mgrYN = mgrYN;
	}
	public char getDelYN() {
		return delYN;
	}
	public void setDelYN(char delYN) {
		this.delYN = delYN;
	}
	@Override
	public String toString() {
		return "ProjectMember [proNo=" + proNo + ", memNo=" + memNo + ", mgrYN=" + mgrYN + ", delYN=" + delYN + "]";
	}
	
	
	
}
