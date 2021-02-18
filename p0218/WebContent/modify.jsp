<%@page import="com.javalec.ex.MemberDto"%>
<%@page import="com.javalec.ex.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% if(session.getAttribute("naver_userId")==null){ %>
	<script type="text/javascript">
		 alert("로그인이 되어 있지 않습니다. 로그인후 접속하세요.");
		 location.href="login.html";
	</script>	   
<%}%> 
<% // 1명의 정보를 dto로 받음
   MemberDao dao = new MemberDao();
   String id = (String)session.getAttribute("naver_userId");
   MemberDto dto = dao.memberOneSelect(id);
%>
    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<script src="http://code.jquery.com/jquery-latest.min.js"></script>
		<title>회원정보수정</title>
		<!-- <script type="text/javascript">
		function formReset(){
			window.history.back();
		} 
		function formCheck(){
			if($("#pw").val()==""){
				alert("비밀번호가 없습니다. 입력하세요.!");
				$("#pw").focus();
				return false;
			}
			
			document.form.submit();
		}
		
		//Jquery
		$(function(){
			
		});
		</script> -->
	</head>
	<body>
	   <form action="ModifyOk" method="post" name="form">
	     <label>아이디</label>
	     <input type="text" id="id" name="id" value=<%=dto.getId() %>><br>
	     <label>패스워드</label>
	     <input type="password" id="pw" name="pw"><br>
	     <label>패스워드확인</label>
	     <input type="password" name="pw2"><br>
	     <label>이름</label>
	     <input type="text" name="name" value=<%=dto.getName() %>><br>
	     <label>닉네임</label>
	     <input type="text" name="nName" value=<%=dto.getnName() %>><br>
	     <label>이메일</label>
	     <input type="text" name="email1" value=<%=dto.getEmail1() %>>@
	     <input type="text" name="email2" value=<%=dto.getEmail2()%> ><br>
	     <label>전화번호</label>
	     <input type="text" name="tel" value=<%=dto.getTel()%>><br>
	     <label>주소</label>
	     <input type="text" name="address1" value=<%=dto.getAddress1()%>><br>
	     <input type="text" name="address2" value=<%=dto.getAddress2()%>><br>
	     <label>성별</label><br>
	     <label><input type="radio" name="gender" value="남성" <%= ("남성").equals(dto.getGender())?"checked":"" %> >남성</label>
	     <label><input type="radio" name="gender" value="여성" <%= ("여성").equals(dto.getGender())?"checked":"" %>>여성</label><br>
	     <label>취미</label><br>
	     <% String[] hobbys = dto.getHobby().split(","); //수영,조깅,독서
	        for(int i=0;i<hobbys.length;i++){ %>
	     <label><input type="checkbox" name="hobby" value="수영" <%= ("수영").equals(hobbys[i])?"checked":"" %>>수영</label>
	     <label><input type="checkbox" name="hobby" value="조깅" <%= ("조깅").equals(hobbys[i])?"checked":"" %>>조깅</label>
	     <label><input type="checkbox" name="hobby" value="골프" <%= ("골프").equals(hobbys[i])?"checked":"" %>>골프</label>
	     <label><input type="checkbox" name="hobby" value="독서" <%= ("독서").equals(hobbys[i])?"checked":"" %>>독서</label><br>
	     <%}%>
	     <input type="button" onclick="formCheck()" value="확인">
	     <input type="button" onclick="formReset()" value="취소"><br>
	   
	   </form>
	
	</body>
</html>