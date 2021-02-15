package kr.or.houroffice.project.model.vo;

public class MonthlyProject {
	private int monthly;
	private int monthlyCount;
	
	public MonthlyProject() {
		super();
		// TODO Auto-generated constructor stub
	}
	public MonthlyProject(int monthly, int monthlyCount) {
		super();
		this.monthly = monthly;
		this.monthlyCount = monthlyCount;
	}
	
	public int getMonthly() {
		return monthly;
	}
	public void setMonthly(int monthly) {
		this.monthly = monthly;
	}
	public int getMonthlyCount() {
		return monthlyCount;
	}
	public void setMonthlyCount(int monthlyCount) {
		this.monthlyCount = monthlyCount;
	}
}
