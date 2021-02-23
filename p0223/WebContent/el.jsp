<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
  application.setAttribute("server_admin", "sv_0001");
  session.setAttribute("session_id", "admin");
  session.setAttribute("session_pw", "1111");
  request.setAttribute("ip", "211.0.0.7");
  request.setAttribute("hidden_param", "gmarket_vvip");
  

%>    
    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>el 태그</title>
		<script src="http://code.jquery.com/jquery-latest.min.js"></script>
		<script type="text/javascript">
		   function formCheck(){
			   if($("#id").val()==""){
				   alert("아이디를 입력하세요.!");
				   $("#id").focus();
				   return false;
			   }
			   if($("#pw").val()==""){
				   alert("비밀번호를 입력하세요.!");
				   $("#pw").focus();
				   return false;
			   }
			   document.elForm.submit();
		   }
		   
		   function formReset(){
			   document.elForm.reset();
		   }
		</script>
		
	</head>
	<body>
	  <form action="elResult.jsp" method="post" name="elForm">
	    <label>아이디</label>
	    <input type="text" id="id" name="id"><br>
	    <label>패스워드</label>
	    <input type="text" id="pw" name="pw"><br>
	    <label>이름</label>
	    <input type="text" id="name" name="name"><br>
	    <input type="button" onclick="formCheck()" value="확인">
	    <input type="button" onclick="formReset()" value="취소">
	  
	  </form>
	  ${requestScope.ip }<br>
	  ${requestScope.hidden_param }<br>
	  
	
	</body>
</html>