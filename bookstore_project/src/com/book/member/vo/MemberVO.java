package com.book.member.vo;

public class MemberVO {
//	ID	VARCHAR2(30 BYTE)
//	PWD	VARCHAR2(30 BYTE)
//	EMAIL	VARCHAR2(50 BYTE)
//	GENDER	CHAR(1 BYTE)
//	JOINDATE	DATE
//	PHONENUM	VARCHAR2(20 BYTE)
	private String id;
	private String pwd;
	private String email;
	private String gender;
	private String joindate;
	private String phonenum;
	private int no;
	
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}

	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getJoindate() {
		return joindate;
	}
	public void setJoindate(String joindate) {
		this.joindate = joindate;
	}
	public String getPhonenum() {
		return phonenum;
	}
	public void setPhonenum(String phonenum) {
		this.phonenum = phonenum;
	}
	
	
}
