package com.javalec.ex;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class Member3Dao {
	
	Context context;
	DataSource ds;
	Connection conn;
	PreparedStatement pstmt;
	ResultSet rs;
	ArrayList<Member3Dto> list = new ArrayList<Member3Dto>();
	Member3Dto dto;
	String id,pw,hobby;
	int chk;
	
	public Member3Dao() {
		try {
			context = new InitialContext();
			ds = (DataSource)context.lookup("java:comp/env/jdbc/Oracle11g");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	//회원 전체리스트
	public ArrayList<Member3Dto> memberSelectAll(){
		try {
			conn = ds.getConnection();
			String query = "select * from member3";
			pstmt = conn.prepareStatement(query);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				id = rs.getString("id");
				pw = rs.getString("pw");
				hobby = rs.getString("hobby");
				list.add(new Member3Dto(id,pw,hobby));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(rs!=null) rs.close();
				if(pstmt!=null) pstmt.close();
				if(conn!=null) conn.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		return list;
	}//memberSelectAll
	

}//class
