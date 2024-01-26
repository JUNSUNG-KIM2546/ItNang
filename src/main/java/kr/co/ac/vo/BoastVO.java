package kr.co.ac.vo;

public class BoastVO extends BoastFileVO {
	
	//유저고유번호
	private Long uNo;
	
	//게시판 ID
	private Long boastId;
	
	//게시물 명
	private String boastSj;
		
	//게시물 내용
	private String boastCn;
		
	//하트수
	private int boastCo;
		
	//등록자 IP
	private String boastIp;
		
	//공지여부
	private String boastAt;
	
	//이미지
	private  String boastImg;
		
	//최초등록시점
	private java.util.Date boastFrst;
		
	//최종수정시점
	private java.util.Date boastLast;

	
	public Long getuNo() {
		return uNo;
	}

	public void setuNo(Long uNo) {
		this.uNo = uNo;
	}

	public Long getBoastId() {
		return boastId;
	}

	public void setBoastId(Long boastId) {
		this.boastId = boastId;
	}

	public String getBoastSj() {
		return boastSj;
	}

	public void setBoastSj(String boastSj) {
		this.boastSj = boastSj;
	}

	public String getBoastCn() {
		return boastCn;
	}

	public void setBoastCn(String boastCn) {
		this.boastCn = boastCn;
	}

	public int getBoastCo() {
		return boastCo;
	}

	public void setBoastCo(int boastCo) {
		this.boastCo = boastCo;
	}

	public String getBoastIp() {
		return boastIp;
	}

	public void setBoastIp(String boastIp) {
		this.boastIp = boastIp;
	}

	public String getBoastAt() {
		return boastAt;
	}

	public void setBoastAt(String boastAt) {
		this.boastAt = boastAt;
	}

	public String getBoastImg() {
		return boastImg;
	}

	public void setBoastImg(String boastImg) {
		this.boastImg = boastImg;
	}

	public java.util.Date getBoastFrst() {
		return boastFrst;
	}

	public void setBoastFrst(java.util.Date boastFrst) {
		this.boastFrst = boastFrst;
	}

	public java.util.Date getBoastLast() {
		return boastLast;
	}

	public void setBoastLast(java.util.Date boastLast) {
		this.boastLast = boastLast;
	}
	
}
