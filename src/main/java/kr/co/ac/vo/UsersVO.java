package kr.co.ac.vo;

public class UsersVO {
	private Long NO;		// 회원 번호
	private String id;		// 회원 아이디
	private String pass;	// 회원 비밀번호
	private String name;	// 회원 이름
	private String email;	// 회원 이메일
	private String phone;	// 회원 연락처
	private java.util.Date sbscrbde;	// 회원 가입일자
	private String admin;	// UseAt
	
	public Long getNO() {
		return NO;
	}
	public void setNO(Long nO) {
		NO = nO;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public java.util.Date getSbscrbde() {
		return sbscrbde;
	}
	public void setSbscrbde(java.util.Date sbscrbde) {
		this.sbscrbde = sbscrbde;
	}
	public String getAdmin() {
		return admin;
	}
	public void setAdmin(String admin) {
		this.admin = admin;
	}
	
}
