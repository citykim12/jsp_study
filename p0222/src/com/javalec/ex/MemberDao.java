package com.javalec.ex;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class MemberDao {
	
	Context context;
	DataSource ds;
	Connection conn;
	PreparedStatement pstmt;
	ResultSet rs;
	ArrayList<MemberDto> list=new ArrayList<MemberDto>();
	MemberDto dto;
	String id,pw,hobby;
	int chk;
	
	public MemberDao(){  //생성자 public
		try {
			context = new InitialContext();
			ds =(DataSource)context.lookup("java:comp/env/jdbc/Oracle11g");
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	//회원1명 수정
	public int memberOneUpdate(MemberDto dto) {
		chk=0;
		try {
			conn = ds.getConnection();
			String query ="update member3 set id=?,pw=?,hobby=? where id=?";
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, dto.getId());
			pstmt.setString(2, dto.getPw());
			pstmt.setString(3, dto.getHobby());
			pstmt.setString(4, dto.getId());
			chk = pstmt.executeUpdate(); //성공1, 실패-1
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(pstmt!=null) pstmt.close();
				if(conn!=null) conn.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		return chk;
	}//memberOneUpdate
	
	
	//회원추가
	public int memberInsert(MemberDto dto) {
		chk=0;
		try {
			conn = ds.getConnection();
			String query ="insert into member3 values(?,?,?)";
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, dto.getId());
			pstmt.setString(2, dto.getPw());
			pstmt.setString(3, dto.getHobby());
			chk = pstmt.executeUpdate(); //성공1, 실패-1
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(pstmt!=null) pstmt.close();
				if(conn!=null) conn.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		return chk;
	}//memberInsert
	
	
	//회원1명리스트
	public MemberDto memberOne(String user_id) {
		try {
			conn = ds.getConnection();
			String query="select * from member3 where id=?";
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, user_id);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				id = rs.getString("id");
				System.out.println(id);
				pw = rs.getString("pw");
				hobby = rs.getString("hobby");
				System.out.println(hobby);
				dto = new MemberDto(id,pw,hobby);  
			}
		}catch(Exception e) {
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
		return dto;
	}
	
	
	//회원전체리스트
	public ArrayList<MemberDto> memberList() {
		try {
			conn = ds.getConnection();
			String query="select * from member3";
			pstmt = conn.prepareStatement(query);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				id = rs.getString("id");
				System.out.println(id);
				pw = rs.getString("pw");
				hobby = rs.getString("hobby");
				System.out.println(hobby);
				list.add(new MemberDto(id,pw,hobby));  
			}
		}catch(Exception e) {
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
		
	}//memberList
	
	
	//회원로그인
	public MemberDto memberLogin(String user_id,String user_pw) {
		dto = new MemberDto();
	  	try {
//	  		conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","ora_user","1234");
	  		conn = ds.getConnection();
			String query = "select * from member3 where id=? and pw=?";
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, user_id);
			pstmt.setString(2, user_pw);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				dto = new MemberDto(rs.getString("id"),rs.getString("pw"),rs.getString("hobby"));
			}
	  	} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(rs!=null) rs.close();
				if(pstmt!=null) pstmt.close();
				if(conn!=null) conn.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
	  	return dto;
	}//MemberLogin
	
	
}//class
