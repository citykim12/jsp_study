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
	#div{
		height: 110px;		
	 	margin: 50px auto;
	 	width: 445px;
	 	border: 2px solid #dfdfdf;
	}
	#box {
		width: 50px;
		height: 50px;
		border: 1px solid #dddddd;
		float:left;
		display: inline;
		margin-right: 20px;
	}
	#div>div:nth-of-type(1){
		height: 50px;
	 	padding: 15px 20px;
	}
	#div>div:nth-of-type(2){
		float: left;
	 	width: 100%;
	 	box-sizing:border-box;
	}
	ul{
		list-style: none;
		width: 445px;
	}
	li{
		height:30px;
		float: left;
		border-top: 1px solid #dfdfdf;
		border-right: 1px solid #dfdfdf;
		text-align: center;
		width: 15.3%;
	}
	li:nth-last-of-type(1){
		border-right: none;
		width: 6.8%;
	}
	button {
	float: right;
}
	a,span{
		font-size: 14px;
	}
	p{
		margin-bottom: 5px;
	}
	a>span{
	font-weight: 600;
	color: green;
}
</style>
</head>
<body>
<%
	String id = request.getParameter("id");
	
	Cookie coo = new Cookie("authUser",id);
	coo.setMaxAge(1800);
	response.addCookie(coo);
%>
<div id="div">
	<div>
	<div id="box">이미지</div>
	<p><%=id%> 님 <span><a>내정보</a></span></p>
	<a>메일<span>10</span> </a>
	<a>쪽지<span>12</span></a>
	<button>로그아웃</button>
	</div>

	<div>
	<ul>
		<li>알림</li>
		<li>MY구독</li>
		<li>메일</li>
		<li>카페</li>
		<li>블로그</li>
		<li>페이</li>
		<li>></li>
	</ul>
	</div>
</div>
</body>
</html>