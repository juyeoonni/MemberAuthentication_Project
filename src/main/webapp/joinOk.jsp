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
	<h2>ȸ�������� �Ϸ�Ǿ����ϴ�.</h2>
	
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
	out.println(memberDTO.getName() + "��, ȸ�������� �Ϸ�Ǿ����ϴ�.");
	%>
	<a href="login.jsp">�α����ϱ�</a>
	
</body>
</html>
