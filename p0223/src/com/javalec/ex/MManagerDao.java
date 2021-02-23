package com.javalec.ex;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class MManagerDao {
	
	public MManagerDao(){
		try {
			context = new InitialContext();
			ds =(DataSource)context.lookup("java:comp/env/jdbc/Oracle11g");
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	Context context;
	DataSource ds;
	Connection conn;
	PreparedStatement pstmt;
	ResultSet rs;
	ArrayList<MManagerDto> list=new ArrayList<MManagerDto>();
	MManagerDto dto;
	String mNum,mpw,mName,mgender,mhobby,mfileName,morifileName;
	int chk;
	
	public MManagerDto mManagerLogin(MManagerDto dto) {
		
		try {
			conn = ds.getConnection();
			String query = "select * from mManager where mNum=? and mPw=?";
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, dto.getmNum());
			System.out.println("dao,dto데이터 : "+dto.getmNum());
			pstmt.setString(2, dto.getmPw());
			rs = pstmt.executeQuery();
			if(rs.next()) {
				dto = new MManagerDto();
				dto.setmNum(rs.getString("mNum"));
				dto.setmName(rs.getString("mName"));
				System.out.println("rs데이터 : "+rs.getString("mName"));
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
		
		return dto;
	}//mManagerLogin

}//class
