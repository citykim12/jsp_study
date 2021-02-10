<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
	*{
		margin: 0;
		padding: 0;
	}
	div{
	 	margin: 50px auto;
	 	padding: 17px 20px;
	 	width: 445px;
	 	box-sizing:border-box;
	 	border: 2px solid #efefef;
	}
	a{
		text-decoration: none;
	}
	button {
	margin:15px 15px 15px 0;
	width: 400px; height: 50px;
	border: 1px solid green;
	background-color: green;
	color : white;
	font-size: 20px;
}
	span,p{
		font-size: 13px;
		color: #666666;
	}

	span:nth-of-type(2) {
	float: right;
}

</style>
</head>
<body>
	<div>
		<p>네이버를 안전하고 편리하게 이용하세요.</p>
		<button onclick="location.href='naver_login.html'">naver 로그인</button><br>
		<span><a>아이디/비밀번호 찾기</a></span><span><a>회원가입</a></span>
		
	</div>
</body>
</html>