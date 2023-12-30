package kr.co.ac.vo;

import java.util.Date;

public class UsersVo {
	private Long NO;
	private String id;
	private String pass;
	private String name;
	private String email;
	private String phone;
	private java.util.Date sbscrbde;
	private char admin;
	
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
	public char getAdmin() {
		return admin;
	}
	public void setAdmin(char admin) {
		this.admin = admin;
	}
	
}
