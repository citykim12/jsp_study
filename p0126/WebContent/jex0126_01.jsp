<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
	  <h1>전달된 값</h1>
	  <%
	    String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		String tel = request.getParameter("tel");
		String gender = request.getParameter("gender");
		String[] hobby = request.getParameterValues("hobby");
	  %>
	  <h2>id : <%=id %></h2>
	  <h2>pw : <%=pw %></h2>
	  <h2>name : <%=name %></h2>
	  <h2>tel : <%=tel %></h2>
	  <h2>gender : <%=gender %></h2>
	  <h2> hobby :
		   <%
		      for(int i=0;i<hobby.length;i++) {
				out.println(hobby[i]+" ");
			  }
		   %>
	  </h2>
	
	</body>
</html>