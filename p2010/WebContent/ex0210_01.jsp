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
		<title>db 연결</title>
	</head>
	<body>
	  <%!
	     Connection conn;
	     Statement stmt;
	     ResultSet rs;
	     
	     String driver = "oracle.jdbc.driver.OracleDriver";
	     String url = "jdbc:oracle:thin:@localhost:1521:xe";
	     String uid="system";
	     String upw = "1234";
	     String query = "select * from member";
	  %>
	  
	  
	</body>
</html>