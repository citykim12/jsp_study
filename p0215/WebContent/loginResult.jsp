<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%! String id,name,nName; %>    
<%-- <%
  id = (String)session.getAttribute("naver_id");
  if(id==null){
%>
   <script type="text/javascript">
       alert('먼저 로그인을 하신후 사용이 가능합니다.!'); location.href="login.html";
   </script>
 %}%> --%>
<!DOCTYPE html>0<html>
	<head>
		<meta charset="UTF-8">
		<title>로그인 결과</title>
		<style type="text/css">
		  table,td{border:1px solid black; border-collapse: collapse;}
		</style>
	</head>
	<body>
	  <%
	     id = (String)session.getAttribute("naver_id");
	     name = (String)session.getAttribute("naver_name");
	     nName = (String)session.getAttribute("naver_nName");
	  %>
	  <table>
	    <tr>
	      <td colspan="2"><%=nName %>님 환영합니다!!</td>
	    </tr>
	    <tr>
	      <td>아이디</td>
	      <td><%=id %></td>
	    </tr>
	    <tr>
	      <td>이름</td>
	      <td><%=name %></td>
	    </tr>
	    <tr>
	      <td>닉네임</td>
	      <td><%=nName %></td>
	    </tr>
	    <tr>
	      <td colspan="2"><a href="Logout">로그아웃</a></td>
	    </tr>
	  
	  </table>
	
	</body>
</html>