package kr.co.ac.vo;

public class UsersVO extends UsersFileVO {
	private Long uNo;		// 회원 번호
	private String uNick;	// 회원 닉네임
	private String uId;		// 회원 아이디
	private String uPass;	// 회원 비밀번호
	private String uName;	// 회원 이름
	private String uEmail;	// 회원 이메일
	private String uPhone;	// 회원 연락처
	private String uDetail;	// 회원 소개
	private String uImg;	// 회원 이미지
	private java.util.Date registDate;	// 회원가입일자
	private java.util.Date updateDate;	// 회원정보수정일자
	private String useAt;	// 권한여부
	
	
	public Long getuNo() {
		return uNo;
	}
	public void setuNo(Long uNo) {
		this.uNo = uNo;
	}
	public String getuNick() {
		return uNick;
	}
	public void setuNick(String uNick) {
		this.uNick = uNick;
	}
	public String getuId() {
		return uId;
	}
	public void setuId(String uId) {
		this.uId = uId;
	}
	public String getuPass() {
		return uPass;
	}
	public void setuPass(String uPass) {
		this.uPass = uPass;
	}
	public String getuName() {
		return uName;
	}
	public void setuName(String uName) {
		this.uName = uName;
	}
	public String getuEmail() {
		return uEmail;
	}
	public void setuEmail(String uEmail) {
		this.uEmail = uEmail;
	}
	public String getuPhone() {
		return uPhone;
	}
	public void setuPhone(String uPhone) {
		this.uPhone = uPhone;
	}
	public String getuDetail() {
		return uDetail;
	}
	public void setuDetail(String uDetail) {
		this.uDetail = uDetail;
	}
	public String getuImg() {
		return uImg;
	}
	public void setuImg(String uImg) {
		this.uImg = uImg;
	}
	public java.util.Date getRegistDate() {
		return registDate;
	}
	public void setRegistDate(java.util.Date registDate) {
		this.registDate = registDate;
	}
	public java.util.Date getUpdateDate() {
		return updateDate;
	}
	public void setUpdateDate(java.util.Date updateDate) {
		this.updateDate = updateDate;
	}
	public String getUseAt() {
		return useAt;
	}
	public void setUseAt(String useAt) {
		this.useAt = useAt;
	}
	
}
