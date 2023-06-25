<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<% String sName = (String)session.getAttribute("id"); %>
	<%= sName%>님 로그아웃 되었습니다.
	<% session.invalidate(); %> 
	
	<a href="login.jsp">로그인하기</a><br />
</body>
</html>