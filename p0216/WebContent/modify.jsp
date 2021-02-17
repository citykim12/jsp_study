<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
  if((String)session.getAttribute("naver_userId")==null){
		out.println("<script>");
		out.println("alert('로그인이 되어있지 않습니다. 로그인을 해주세요!');");
		out.println("location.href='login.html';");
		out.println("</script>");
  }
%>   
<%!
    Connection conn;
    Statement stmt;
    ResultSet rs;
    String id,pw,name,nName,email1,email2,tel,address1,address2,gender,hobby1,hobby2,hobby3,hobby4;
    
    String[] hobby;
    String[] shobby = new String[4];
%> 
<%
    String user_id = (String)session.getAttribute("naver_userId");
    try{
    	Class.forName("oracle.jdbc.driver.OracleDriver");
        conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","ora_user","1234");
        stmt = conn.createStatement();
        String query = "select * from member where id='"+user_id+"'";
        out.println(query);
        rs = stmt.executeQuery(query);
        if(rs.next()){
        	id = rs.getString("id");
            pw = rs.getString("pw");
            name = rs.getString("name");
            nName = rs.getString("nName");
            email1 = rs.getString("email1");
            email2 = rs.getString("email2");
            tel = rs.getString("tel");
            address1 = rs.getString("address1");
            address2 = rs.getString("address2");
            gender = rs.getString("gender");
            hobby1 = rs.getString("hobby1");
            hobby2 = rs.getString("hobby2");
            hobby3 = rs.getString("hobby3");
            hobby4 = rs.getString("hobby4");
        }else{
        	out.println("<script>");
    		out.println("alert('데이터를 읽어오지 못했습니다. 로그인을 해주세요.');");
    		out.println("location.href='index.jsp';");
    		out.println("</script>");
        }
    }catch(Exception e){
    	e.printStackTrace();
    }finally{
    	try{
    		if(rs!=null)rs.close();
    		if(stmt!=null)stmt.close();
    		if(conn!=null)conn.close();
    	}catch(Exception e2){
    		e2.printStackTrace();
    	}
    }
%>

<!DOCTYPE html>
<html>
<head>
		<meta charset="UTF-8">
		<script src="http://code.jquery.com/jquery-latest.min.js"></script>
		<title>회원정보수정</title>
		<script type="text/javascript">
        $(function(){
        	
        	
        	
        	
			
		});
        
        function formReset(){
        	location.href="index.jsp";
        }
        
		function formCheck(){
			alert("함수호출");
			
			if($("#pw").val()==""){
				alert("데이터가 없습니다. 다시 입력해주세요.!");
				return false;
			}
			var pwPtn = /^[0-9]*$/;
			if(!pwPtn.test($("#pw").val())){
				alert("0-9까지 숫자를 입력하셔야 합니다.");
				$("#pw").val("");
				$("#pw").focus();
				return false;
			}
			
			if($("#pw").val()!=$("#pw2").val()){
				alert("비밀번호가 일치하지 않습니다. 다시 입력하세요.!");
				$("#pw").val("");
				$("#pw2").val("");
				$("#pw").focus();
				return false;
			}
			
			document.form.submit();
		}
		
		
		</script>
	</head>
	<body>
	<h2>회원정보수정</h2>
	  <form action="ModifyOk" method="post" name="form">
	     <label>아이디</label>
	     <input type="text" name="id" value=<%=id %> readonly><br>
	     <label>패스워드</label>
	     <input type="password" id="pw" name="pw"><br>
	     <label>패스워드확인</label>
	     <input type="password" id="pw2" name="pw2"><br>
	     <label>이름</label>
	     <input type="text" name="name" value=<%=name %>><br>
	     <label>닉네임</label>
	     <input type="text" name="nName" value=<%=nName %>><br>
	     <label>이메일</label>
	     <input type="text" name="email1" value=<%=email1 %>>@
	     <input type="text" name="email2" value=<%=email2 %>><br>
	     <label>전화번호</label>
	     <input type="text" name="tel" value=<%=tel %>><br>
	     <label>주소</label>
	     <input type="text" name="address1" value=<%=address1 %>><br>
	     <input type="text" name="address2" value=<%=address2 %>><br>
	     <label>성별</label><br>
	     <label><input type="radio" name="gender" value="남성" <%=("남성".equals(gender))?"checked":"" %>>남성</label>
	     <label><input type="radio" name="gender" value="여성" <%=("여성".equals(gender))?"checked":"" %>>여성</label><br>
	     
	     <label>취미</label><br>
	       <label><input type="checkbox" name="hobby" value="수영" <%=("수영".equals(hobby1))?"checked":"" %>>수영</label>
	     <%if("조깅".equals(hobby2)){%>
	       <label><input type="checkbox" name="hobby" value="조깅" checked>조깅</label>
	     <%}else{%>
	       <label><input type="checkbox" name="hobby" value="조깅">조깅</label>
	     <%}%>
	     <%if("골프".equals(hobby3)){%>
	       <label><input type="checkbox" name="hobby" value="골프" checked>골프</label>
	     <%}else{%>
	       <label><input type="checkbox" name="hobby" value="골프">골프</label>
	     <%}%>
	     <%if("독서".equals(hobby4)){%>
	     <label><input type="checkbox" name="hobby" value="독서" checked>독서</label><br>
	     <%}else{%>
	     <label><input type="checkbox" name="hobby" value="독서">독서</label><br>
	     <%}%>
	     <input type="button" onclick="formCheck()" value="확인">
	     <input type="button" onclick="formReset()" value="취소"><br>
	   </form>
	
	</body>
</html>