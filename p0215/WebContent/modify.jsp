<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
   if(session.getAttribute("naver_id")==null){
	   response.sendRedirect("index.jsp");
   }
%>    
<%! 
   Connection conn;
   Statement stmt;
   ResultSet rs;
   
   String id,pw,name,nName,tel,email1,email2,address1,address2,gender;
   String[] mhobby=new String[4];
%>
<%
   id = (String)session.getAttribute("naver_id");
   
   try{
     Class.forName("oracle.jdbc.driver.OracleDriver");
     conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","1234");
     stmt = conn.createStatement();
     String query = "select * from member2 where id='"+id+"'";
     rs = stmt.executeQuery(query);
	 
     while(rs.next()){
    	 id=rs.getString("id");
    	 pw=rs.getString("pw");
    	 name=rs.getString("name");
    	 nName=rs.getString("nName");
    	 tel=rs.getString("tel");
    	 email1=rs.getString("email1");
    	 email2=rs.getString("email2");
    	 address1=rs.getString("address1");
    	 address2=rs.getString("address2");
    	 gender=rs.getString("gender");
    	 mhobby[0] = rs.getString("hobby1");
    	 mhobby[1] = rs.getString("hobby2");
    	 mhobby[2] = rs.getString("hobby3");
    	 mhobby[3] = rs.getString("hobby4");
     }
   }catch(Exception e){
	   e.printStackTrace();
   }finally{
	   try{
		 if(rs!=null) rs.close();
		 if(stmt!=null) stmt.close();
		 if(conn!=null) conn.close();
	   }catch(Exception e2){
		   e2.printStackTrace();
	   }
   }
%>    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>회원정보 수정</title>
		</head>
	<body>
	  <form action="ModifyOk" method="post">
	     <label>아이디</label>
	     <input type="text" name="id" value=<%=id %> readonly="readonly"><br>
	     <label>패스워드</label>
	     <input type="password" name="pw"><br>
	     <label>패스워드확인</label>
	     <input type="password" name="pw2"><br>
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
	     <input type="text" name="address2" value=<%=address2 %> placeholder="상세한 주소를 적어주세요."><br>
	     <label>성별</label><br>
	     <script type="text/javascript">alert(<%=gender %>)</script>
	     <%if("남성".equals(gender)){%>
	     	<label><input type="radio" name="gender" value="남성" checked>남성</label>
            <label><input type="radio" name="gender" value="여성" >여성</label><br>
	     <%}else{%>
	     	<label><input type="radio" name="gender" value="남성">남성</label>
            <label><input type="radio" name="gender" value="여성" checked>여성</label><br>
	     <%}%>
	     <label>취미</label><br>
	     <%if("수영".equals(mhobby[0])){ %>
	       <label><input type="checkbox" name="hobby" value="수영" checked>수영</label>
	     <%}else{%>
	       <label><input type="checkbox" name="hobby" value="수영">수영</label>
	     <%}%>
	     <%if("조깅".equals(mhobby[1])){ %>
	       <label><input type="checkbox" name="hobby" value="조깅" checked>조깅</label>
	     <%}else{%>
	       <label><input type="checkbox" name="hobby" value="조깅" >조깅</label>
	     <%}%>
	     <%if("골프".equals(mhobby[2])){ %>
	       <label><input type="checkbox" name="hobby" value="골프" checked>골프</label>
	     <%}else{%>
	       <label><input type="checkbox" name="hobby" value="골프">골프</label>
	     <%}%>
	     <%if("독서".equals(mhobby[3])){ %>
	       <label><input type="checkbox" name="hobby" value="독서" checked>독서</label><br>
	     <%}else{%>
	     <label><input type="checkbox" name="hobby" value="독서">독서</label><br>
	     <%}%>
	     <input type="submit" value="확인">
	     <input type="reset" value="취소"><br>
	   </form>
	</body>
</html>