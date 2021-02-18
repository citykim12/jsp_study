package com.javalec.ex;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.ArrayList;

public class MemberDao {
	
	public MemberDao() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	Connection conn;
	PreparedStatement pstmt;
	ResultSet rs;
	String id,pw,name,nName,email1,email2,tel,address1,address2,gender,hobby;
	Timestamp mdate;
	
	//회원 1명 수정저장
	public int memberUpdate(MemberDto dto) {
        int chk=0;
		
		try {
			conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","ora_user","1234");
			String query = "update member2 set id=?,pw=?,name=?,nName=?,email1=?,email2=?,tel=?,address1=?,address2=?,gender=?,hobby=?,mdate=? where id=?";
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, dto.getId());
			pstmt.setString(2, dto.getPw());
			pstmt.setString(3, dto.getName());
			pstmt.setString(4, dto.getnName());
			pstmt.setString(5, dto.getEmail1());
			pstmt.setString(6, dto.getEmail2());
			pstmt.setString(7, dto.getTel());
			pstmt.setString(8, dto.getAddress1());
			pstmt.setString(9, dto.getAddress2());
			pstmt.setString(10, dto.getGender());
			pstmt.setString(11, dto.getHobby());
			pstmt.setTimestamp(12, dto.getMdate());
			pstmt.setString(13, dto.getId());
			chk = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(rs!=null)rs.close();
				if(pstmt!=null)pstmt.close();
				if(conn!=null)conn.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		return chk;
	}
	
	//회원 1명저장
	public int memberInsert(MemberDto dto) {
		int chk=0;
		
		try {
			conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","ora_user","1234");
			String query = "insert into member2 values(?,?,?,?,?,?,?,?,?,?,?,?)";
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, dto.getId());
			pstmt.setString(2, dto.getPw());
			pstmt.setString(3, dto.getName());
			pstmt.setString(4, dto.getnName());
			pstmt.setString(5, dto.getEmail1());
			pstmt.setString(6, dto.getEmail2());
			pstmt.setString(7, dto.getTel());
			pstmt.setString(8, dto.getAddress1());
			pstmt.setString(9, dto.getAddress2());
			pstmt.setString(10, dto.getGender());
			pstmt.setString(11, dto.getHobby());
			pstmt.setTimestamp(12, dto.getMdate());
			chk = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(rs!=null)rs.close();
				if(pstmt!=null)pstmt.close();
				if(conn!=null)conn.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		return chk;
	}//memberInsert
	
	//로그인체크 메소드
	public MemberDto loginCheck(String id,String pw) {
		MemberDto dto = new MemberDto();
		try {
		  conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","ora_user","1234");
		  String query = "select * from member2 where id=? and pw=?";
		  pstmt = conn.prepareStatement(query);
		  pstmt.setString(1, id);
		  pstmt.setString(2, pw);
		  rs = pstmt.executeQuery();
		  if(rs.next()) {
			dto.setId(rs.getString("id"));
			dto.setName(rs.getString("name"));
			dto.setnName(rs.getString("nName"));
		  }
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(rs!=null)rs.close();
				if(pstmt!=null)pstmt.close();
				if(conn!=null)conn.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		
		return dto;
	}//loginCheck
	
	//1명회원 리스트
	public MemberDto memberOneSelect(String id) {
		MemberDto dto=null;
		try {
			conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","ora_user","1234");
			String query = "select * from member2 where id=?";
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				id = rs.getString("id");
				pw = rs.getString("pw");
				name = rs.getString("name");
				nName = rs.getString("nName");
				email1 = rs.getString("email1");
				email2 = rs.getString("email2");
				tel = rs.getString("tel");
				address1 = rs.getString("address1");
				address2 = rs.getString("address2");
				gender = rs.getString("gender");
				hobby = rs.getString("hobby");
				mdate = rs.getTimestamp("mdate");
				
				dto = new MemberDto(id,pw,name,nName,email1,email2,tel,address1,address2,gender,hobby,mdate);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(rs!=null)rs.close();
				if(pstmt!=null)pstmt.close();
				if(conn!=null)conn.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		
		
		return dto;
	}
	
	
	//전체회원 리스트
	public ArrayList<MemberDto> memberAllSelect() {
		
		ArrayList<MemberDto> list = new ArrayList<MemberDto>();
		
		try {
			conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","ora_user","1234");
			String query = "select * from member2";
			pstmt = conn.prepareStatement(query);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				id = rs.getString("id");
				pw = rs.getString("pw");
				name = rs.getString("name");
				nName = rs.getString("nName");
				email1 = rs.getString("email1");
				email2 = rs.getString("email2");
				tel = rs.getString("tel");
				address1 = rs.getString("address1");
				address2 = rs.getString("address2");
				gender = rs.getString("gender");
				hobby = rs.getString("hobby");
				mdate = rs.getTimestamp("mdate");
				
				MemberDto dto = new MemberDto(id,pw,name,nName,email1,email2,tel,address1,address2,gender,hobby,mdate);
				list.add(dto);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(rs!=null)rs.close();
				if(pstmt!=null)pstmt.close();
				if(conn!=null)conn.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		
		return list;
		
	}//memberAllSelect
	
	
	
	
	
	
	
	
	
	
	
	

}//class
