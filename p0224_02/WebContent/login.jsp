<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>로그인</title>
		<script src="http://code.jquery.com/jquery-latest.min.js"></script>
		<script type="text/javascript">
		   function loginFormCheck(){
			   if($("#mNum").val()==""){
				   alert("id를 입력하세요.!");
				   $("#mNum").focus();
				   return false;
			   }
			   
			   document.loginForm.submit();
		   }
		</script>
	</head>
	<body>
	  <form action="LoginOk" method="post" name="loginForm">
	    <label>아이디</label>
	    <input type="text" id="mNum" name="mNum"><br>
	    <label>비밀번호</label>
	    <input type="password" id="mPw" name="mPw"><br>
	    <input type="button" onclick="loginFormCheck()" value="전송" >
	  </form>
	
	</body>
</html>