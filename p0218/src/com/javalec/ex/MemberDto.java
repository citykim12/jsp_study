package com.javalec.ex;
import java.sql.Timestamp;

public class MemberDto {
	
	private String id,pw,name,nName,email1,email2,tel,address1,address2,gender;
	private String hobby;
	private Timestamp mdate; //날짜변수
	
	MemberDto(){}
	MemberDto(String id,String pw,String name,String nName,String email1,String email2,String tel,String address1,String address2,String gender,String hobby){
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
	MemberDto(String id,String pw,String name,String nName,String email1,String email2,String tel,String address1,String address2,String gender,String hobby,Timestamp mdate){
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
		this.mdate = mdate;
	}
	
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
	public String getHobby() {
		return hobby;
	}
	public void setHobby(String hobby) {
		this.hobby = hobby;
	}
	public Timestamp getMdate() {
		return mdate;
	}
	public void setMdate(Timestamp mdate) {
		this.mdate = mdate;
	}
	
	
	
	
	
	
	

}
