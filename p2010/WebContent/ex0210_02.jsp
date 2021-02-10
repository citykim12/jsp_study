<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
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
		<title>Student 출력</title>
		<style type="text/css">
		  table,th,td{ border:1px solid black; border-collapse: collapse;}
		</style>
	</head>
	<body>
	  <!-- 테이블 
	       학번 | 이름 | 국어 | 영어 | 수학 | 합계 | 평균 | 등수  
	       s001 홍길동   100  100   100   300   100     
	  -->
	  <%!
	    Connection conn;
	    Statement stmt;
	    ResultSet rs;
	  %>
	  
	  <%
	    Date today = new Date();
	    SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
	    String nowdate = sdf.format(today);
	  
	  
	    try{
		    Class.forName("oracle.jdbc.driver.OracleDriver");
		    conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","1234");
		    stmt = conn.createStatement();
		    String query ="select * from student";
		    rs = stmt.executeQuery(query);
		  %>
	  
	  <table>
	    <tr>
	      <th>학번</th>
	      <th>이름</th>
	      <th>국어</th>
	      <th>영어</th>
	      <th>수학</th>
	      <th>합계</th>
	      <th>평균</th>
	      <th>등수</th>
	    </tr>
	    <%
	      while(rs.next()){
	    	  String stu_id =rs.getString("stu_id");
	    	  String name =rs.getString("stu_name");
	    	  String kor =rs.getString("kor"); 
	    	  String eng =rs.getString("eng");
	    	  String math =rs.getString("math");
	    	  String total =rs.getString("total");
	    	  String avg =rs.getString("avg");
	    	  String rank =rs.getString("rank");
	    %>
	    <tr>
	      <td><%=stu_id %></td>
	      <td><%=name %></td>
	      <td><%=kor %></td>
	      <td><%=eng %></td>
	      <td><%=math %></td>
	      <td><%=total %></td>
	      <td><%=avg %></td>
	      <td><%=rank %></td>
	    </tr>
	    <%
	         }
	      }catch(Exception e){
		      e.printStackTrace();
		  }finally{
			  if(rs!=null) rs.close();
			  if(stmt!=null) stmt.close();
			  if(conn!=null) conn.close();
		  }
	    %>
	  </table>
	</body>
</html>