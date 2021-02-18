<%@page import="com.javalec.ex.MemberDto"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.javalec.ex.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% if(session.getAttribute("naver_userId")==null){ %>
	<script type="text/javascript">
		 alert("로그인이 되어 있지 않습니다. 로그인후 접속하세요.");
		 location.href="login.html";
	</script>	   
<%}%>    
<%
   MemberDao dao = new MemberDao();
   ArrayList<MemberDto> list = dao.memberAllSelect();
%>    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>회원리스트</title>
		<style type="text/css">
		  table,th,td{border:1px solid black; border-collapse: collapse;}
		  div{width:1000px; margin:0 auto;}
		</style>
	</head>
	<body>
	  <div>
	  <h2>회원리스트</h2>
	  <table>
	    <tr>
	      <th>번호</th>
	      <th>아이디</th>
	      <th>비밀번호</th>
	      <th>이름</th>
	      <th>닉네임</th>
	      <th>이메일1</th>
	      <th>이메일2</th>
	      <th>전화번호</th>
	      <th>주소1</th>
	      <th>주소2</th>
	      <th>성별</th>
	      <th>취미</th>
	      <th>날짜</th>
	    </tr>
	    <%    for(int i=0; i<list.size();i++){
	    	  MemberDto dto = list.get(i); //4개 %>
		    <%-- 반복 시작 --%>
		    <tr>
		      <td><%=(i+1) %></td>
		      <td><%=dto.getId() %></td>
		      <td><%=dto.getPw() %></td>
		      <td><%=dto.getName() %></td>
		      <td><%=dto.getnName() %></td>
		      <td><%=dto.getEmail1() %></td>
		      <td><%=dto.getEmail2() %></td>
		      <td><%=dto.getTel() %></td>
		      <td><%=dto.getAddress1() %></td>
		      <td><%=dto.getAddress2() %></td>
		      <td><%=dto.getGender() %></td>
		      <td><%=dto.getHobby() %></td>
		      <td><%=dto.getMdate() %></td>
		    </tr>
		    <%-- 반복끝 --%>
	    <%}%>
	    
	  </table>
	  </div>
	</body>
</html>