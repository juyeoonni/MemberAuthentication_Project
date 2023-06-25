<%@page import="com.daodto.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
		// 세션에서 id 속성값을 가져와서 문자열로 저장
		// 이는 이전 로그인 과정에서 저장된 사용자 아이디
		String id = (String)session.getAttribute("id");
		out.println(id);
		
		String pw = (String)session.getAttribute("pw");
		
		MemberDAO memberDAO = new MemberDAO();
		out.println(memberDAO.memberSelect(id).getName() + "님, 환영합니다!");
	%>
	
	<a href="logout.jsp">로그아웃</a> <br />
	<a href="modify.jsp">회원정보 수정</a> <br />
	
	
	
</body>
</html>