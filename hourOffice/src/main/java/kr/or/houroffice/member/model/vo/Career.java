package kr.or.houroffice.member.model.vo;

import java.sql.Date;

public class Career {

	
	private int memNo;			// 사번
	private Date carJoinDate;	// 입사년,월
	private Date carResignDate;	// 퇴사년,월
	private String carPlace;	// 근무처
	private String carPosition;	// 직위
	private String carContent;	// 업무내용
	public Career() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Career(int memNo, Date carJoinDate, Date carResignDate, String carPlace, String carPosition,
			String carContent) {
		super();
		this.memNo = memNo;
		this.carJoinDate = carJoinDate;
		this.carResignDate = carResignDate;
		this.carPlace = carPlace;
		this.carPosition = carPosition;
		this.carContent = carContent;
	}
	public int getMemNo() {
		return memNo;
	}
	public void setMemNo(int memNo) {
		this.memNo = memNo;
	}
	public Date getCarJoinDate() {
		return carJoinDate;
	}
	public void setCarJoinDate(Date carJoinDate) {
		this.carJoinDate = carJoinDate;
	}
	public Date getCarResignDate() {
		return carResignDate;
	}
	public void setCarResignDate(Date carResignDate) {
		this.carResignDate = carResignDate;
	}
	public String getCarPlace() {
		return carPlace;
	}
	public void setCarPlace(String carPlace) {
		this.carPlace = carPlace;
	}
	public String getCarPosition() {
		return carPosition;
	}
	public void setCarPosition(String carPosition) {
		this.carPosition = carPosition;
	}
	public String getCarContent() {
		return carContent;
	}
	public void setCarContent(String carContent) {
		this.carContent = carContent;
	}
	
	
}
