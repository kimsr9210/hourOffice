package kr.or.houroffice.project.model.vo;

public class ProjectFavorite {
	private int proNo;
	private int memNo;
	public ProjectFavorite() {
		super();
		// TODO Auto-generated constructor stub
	}
	public ProjectFavorite(int proNo, int memNo) {
		super();
		this.proNo = proNo;
		this.memNo = memNo;
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
	@Override
	public String toString() {
		return "ProjectFavorite [proNo=" + proNo + ", memNo=" + memNo + "]";
	}
	
}
