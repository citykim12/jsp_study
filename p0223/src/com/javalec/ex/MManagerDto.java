package com.javalec.ex;

import java.sql.Timestamp;

public class MManagerDto {
	private String mNum;
	private String mPw;
	private String mName;
	private String mgender;
	private String mhobby;
	private String mfileName;
	private String morifileName;
	private Timestamp mdate;
	
	public String getmNum() {
		return mNum;
	}
	public void setmNum(String mNum) {
		this.mNum = mNum;
	}
	public String getmPw() {
		return mPw;
	}
	public void setmPw(String mPw) {
		this.mPw = mPw;
	}
	public String getmName() {
		return mName;
	}
	public void setmName(String mName) {
		this.mName = mName;
	}
	public String getMgender() {
		return mgender;
	}
	public void setMgender(String mgender) {
		this.mgender = mgender;
	}
	public String getMhobby() {
		return mhobby;
	}
	public void setMhobby(String mhobby) {
		this.mhobby = mhobby;
	}
	public String getMfileName() {
		return mfileName;
	}
	public void setMfileName(String mfileName) {
		this.mfileName = mfileName;
	}
	public String getMorifileName() {
		return morifileName;
	}
	public void setMorifileName(String morifileName) {
		this.morifileName = morifileName;
	}
	public Timestamp getMdate() {
		return mdate;
	}
	public void setMdate(Timestamp mdate) {
		this.mdate = mdate;
	}
	
	


}
