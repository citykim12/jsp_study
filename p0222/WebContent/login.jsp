<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% if(session.getAttribute("session_Id") !=null){ %>
    <script>alert("로그인이 되어 있습니다. 메인페이지로 이동됩니다.");
            location.href="index.jsp";
    </script>  
    <%-- <jsp:forward page="main.jsp"></jsp:forward>     --%>   	
<%}%>    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>로그인</title>
		<script src="http://code.jquery.com/jquery-latest.min.js"></script>
		<script type="text/javascript">
		   function loginFormCheck(){
			   if($("#id").val()==""){
				   alert("id를 입력하세요.!");
				   $("#id").focus();
				   return false;
			   }
			   
			   document.loginForm.submit();
		   }
		</script>
	</head>
	<body>
	  <form action="LoginOk" method="post" name="loginForm">
	    <label>id</label>
	    <input type="text" id="id" name="id"><br>
	    <label>pw</label>
	    <input type="password" id="pw" name="pw"><br>
	    <input type="button" onclick="loginFormCheck()" value="전송" >
	  </form>
	
	</body>
</html>