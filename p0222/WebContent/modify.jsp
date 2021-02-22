<%@page import="com.javalec.ex.MemberDto"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.javalec.ex.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% if(session.getAttribute("session_Id")==null){ %>
	<jsp:forward page="login.jsp"></jsp:forward>
<%}%> 
<%
   MemberDao dao = new MemberDao();
   String user_id = (String)session.getAttribute("session_Id");
   MemberDto dto = dao.memberOne(user_id);
%>      
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>회원가입</title>
		<script src="http://code.jquery.com/jquery-latest.min.js"></script>
		<script type="text/javascript">
		   function updateFormCheck(){
			   if($("#id").val()==""){
				   alert("id를 입력하세요.!");
				   $("#id").focus();
				   return false;
			   }
			   document.updateForm.submit();
		   }
		   
		   function formBack(){
			   window.history.back();
		   }
		</script>
	</head>
	<body>
	  <form action="ModifyOk" method="post" name="updateForm">
	     <label>아이디</label>
	     <input type="text" name="id" value=<%=dto.getId() %>><br>
	     <label>패스워드</label>
	     <input type="password" name="pw" value=<%=dto.getPw() %>><br>
	     <label>취미</label><br>                                  <!-- 수영,골프,게임,독서 -->
	     <label><input type="checkbox" name="hobby" value="수영" <%=(dto.getHobby().contains("수영"))?"checked":"" %>>수영</label>
	     <label><input type="checkbox" name="hobby" value="골프" <%=(dto.getHobby().contains("골프"))?"checked":"" %>>골프</label>
	     <label><input type="checkbox" name="hobby" value="게임" <%=(dto.getHobby().contains("게임"))?"checked":"" %>>게임</label>
	     <label><input type="checkbox" name="hobby" value="독서" <%=(dto.getHobby().contains("독서"))?"checked":"" %>>독서</label><br>
	     <input type="button" onclick="updateFormCheck()" value="확인">
	     <input type="button" onclick="formBack()" value="취소"><br>
	  </form>  
	</body>
</html>