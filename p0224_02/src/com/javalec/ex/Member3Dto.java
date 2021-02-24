package com.javalec.ex;

public class Member3Dto {
	
	Member3Dto(){}
	Member3Dto(String id,String pw,String hobby){
		this.id = id;
		this.pw = pw;
		this.hobby = hobby;
	}
	
	private String id;
	private String pw;
	private String hobby;
	
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
	public String getHobby() {
		return hobby;
	}
	public void setHobby(String hobby) {
		this.hobby = hobby;
	}
	
	
	
	

}
