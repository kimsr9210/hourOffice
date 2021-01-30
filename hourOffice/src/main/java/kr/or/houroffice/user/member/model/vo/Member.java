package kr.or.houroffice.user.member.model.vo;

public class Member {
	private int testNo;
	private String testId;
	private String testName;
	public Member() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Member(int testNo, String testId, String testName) {
		super();
		this.testNo = testNo;
		this.testId = testId;
		this.testName = testName;
	}
	public int getTestNo() {
		return testNo;
	}
	public void setTestNo(int testNo) {
		this.testNo = testNo;
	}
	public String getTestId() {
		return testId;
	}
	public void setTestId(String testId) {
		this.testId = testId;
	}
	public String getTestName() {
		return testName;
	}
	public void setTestName(String testName) {
		this.testName = testName;
	}
	@Override
	public String toString() {
		return "Member [testNo=" + testNo + ", testId=" + testId + ", testName=" + testName + "]";
	}
	
}
