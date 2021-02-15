package kr.or.houroffice.mail.model.vo;

public class MailInfo {
	private int memNo; //해당 사번
	private int[] mailNoList; //작업해야할 메일 목록
	private char listType; //리스트 타입
	
	//resend용
	private int sdMailNo; //넘겨줄 메일 번호
	private int rtMailNo; //리턴받을 메일 번호
	
	public MailInfo() {
		super();
		// TODO Auto-generated constructor stub
	}

	public MailInfo(int memNo, int[] mailNoList, char listType, int sdMailNo, int rtMailNo) {
		super();
		this.memNo = memNo;
		this.mailNoList = mailNoList;
		this.listType = listType;
		this.sdMailNo = sdMailNo;
		this.rtMailNo = rtMailNo;
	}

	public int getMemNo() {
		return memNo;
	}
	public int[] getMailNoList() {
		return mailNoList;
	}
	public void setMemNo(int memNo) {
		this.memNo = memNo;
	}
	public void setMailNoList(int[] mailNoList) {
		this.mailNoList = mailNoList;
	}
	public char getListType() {
		return listType;
	}
	public void setListType(char listType) {
		this.listType = listType;
	}

	public int getSdMailNo() {
		return sdMailNo;
	}

	public int getRtMailNo() {
		return rtMailNo;
	}

	public void setSdMailNo(int sdMailNo) {
		this.sdMailNo = sdMailNo;
	}

	public void setRtMailNo(int rtMailNo) {
		this.rtMailNo = rtMailNo;
	}

}
