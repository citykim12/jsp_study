package com.javalec.ex;

public class Member {
	
	Member(){}
	Member(String id,String pw,String name,String nName,String email1,String email2,String tel,String address1,String address2,String[] hobby){
		this.id = id;
		this.pw = pw;
		this.name = name;
		this.nName = nName;
		this.email1 = email1;
		this.email2 = email2;
		this.tel = tel;
		this.address1 = address1;
		this.address2 = address2;
		this.gender = gender;
		this.hobby = hobby;
	}
	
	private String id;
	private String pw;
	private String name;
	private String nName;
	private String email1;
	private String email2;
	private String tel;
	private String address1;
	private String address2;
	private String gender;
	private String[] hobby;
	private String date;
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getnName() {
		return nName;
	}
	public void setnName(String nName) {
		this.nName = nName;
	}
	public String getEmail1() {
		return email1;
	}
	public void setEmail1(String email1) {
		this.email1 = email1;
	}
	public String getEmail2() {
		return email2;
	}
	public void setEmail2(String email2) {
		this.email2 = email2;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getAddress1() {
		return address1;
	}
	public void setAddress1(String address1) {
		this.address1 = address1;
	}
	public String getAddress2() {
		return address2;
	}
	public void setAddress2(String address2) {
		this.address2 = address2;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String[] getHobby() {
		return hobby;
	}
	public void setHobby(String[] hobby) {
		this.hobby = hobby;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	
	

}
