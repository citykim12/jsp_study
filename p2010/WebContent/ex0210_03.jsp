<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>게시판 출력</title>
		<style type="text/css">
		  table,th,td{ border:1px solid black; border-collapse: collapse;}
		</style>
	</head>
	<body>
	<!-- 
	     1. 로그인페이지 만들기 id,pass
	     2. 로그인체크 -> id:admin pass:1234 -> ex0210_03.jsp
	                -> 아이디,패스워드 불일치시 : login.jsp
	                -> session 아이디를 저장시킬것.
	                -> 404에러,500에러 만들것.
	     1. db 설계 -> nboard: number 3,title 100 ,writer 20 ,date 20,view 1,
	                   ipaddress 15  varchar2
	     2. 5개의 db insert
	     3. jsp 데이터 출력
	        - html 테이블 생성
	        - 5개의 데이터 값 출력
	  -->
	  <%!
	     Connection conn;
	     Statement stmt;
	     ResultSet rs;
	     
	     String driver = "oracle.jdbc.driver.OracleDriver";
	     String url = "jdbc:oracle:thin:@localhost:1521:xe";
	     String uid="system";
	     String upw = "1234";
	     String query = "select * from nboard";
	  %>
	  <%
	  
	 try{
	    	 Class.forName(driver); //jdbc메모리실행
		     conn = DriverManager.getConnection(url,uid,upw); //oracle DB 접속
		     stmt = conn.createStatement();                 // sql구문을 실행
		     rs = stmt.executeQuery(query);                 // 실행후 데이터 전달
		 %>
		 <table>
			    <tr>
			      <th>번호</th>
			      <th>제목</th>
			      <th>작성자</th>
			      <th>날짜</th>
			      <th>조회</th>
			      <th>아이피</th>
			    </tr>
		 <%   
		     while(rs.next()){
		    	 String b_num = rs.getString("b_num");
		    	 String title = rs.getString("title");
		    	 String writer = rs.getString("writer");
		    	 String b_date = rs.getString("b_date");
		    	 String b_view = rs.getString("b_view");
		    	 String ip_address = rs.getString("ip_address");
		  %>
		     <tr>
			      <td><%=b_num %></td>
			      <td><%=title %></td>
			      <td><%=writer %></td>
			      <td><%=b_date %></td>
			      <td><%=b_view %></td>
			      <td><%=ip_address %></td>
	        </tr>
		  
		  
		  <%  	 
		    	 
		    	 
		    	 
		     }
	     }catch(Exception e){
	    	 e.printStackTrace();
	     }finally{
	    	 try{
		    	 if(rs!=null) rs.close();
		    	 if(stmt!=null) stmt.close();
		    	 if(conn!=null) conn.close();
	    	 }catch(Exception e2){
	    		 e2.printStackTrace();
	    	 }
	     }
	     
	  %>
	  </table>
	</body>
</html>