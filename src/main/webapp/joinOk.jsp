<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@page import="com.daodto.*"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h2>회원가입이 완료되었습니다.</h2>
	
	<%
	request.setCharacterEncoding("EUC-KR");
	MemberDAO memberDAO = new MemberDAO();
	
	String name = request.getParameter("name");
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String phone1 = request.getParameter("phone1");
	String phone2 = request.getParameter("phone2");
	String phone3 = request.getParameter("phone3");
	String gender = request.getParameter("gender");
	
	MemberDTO memberDTO = new MemberDTO(name, id, pw, phone1, phone2, phone3, gender);
	memberDAO.memberInsert(memberDTO);
	out.println(memberDTO.getName() + "님, 회원가입이 완료되었습니다.");
	%>
	<a href="login.jsp">로그인하기</a>
	
</body>
</html>
