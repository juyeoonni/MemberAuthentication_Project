<%@page import="com.daodto.*"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h2>ȸ������ ���� �Ϸ�</h2>
	<% 
	MemberDAO memberDAO = new MemberDAO();
	
	String id = (String)session.getAttribute("id");
	String name = request.getParameter("name");
	String pw = request.getParameter("pw");
	String phone1 = request.getParameter("phone1");
	String phone2 = request.getParameter("phone2");
	String phone3 = request.getParameter("phone3");
	String gender = request.getParameter("gender");
	
	MemberDTO memberDTO = new MemberDTO(name, id, pw, phone1, phone2, phone3, gender);
	memberDAO.memberUpdate(memberDTO);
	out.println(memberDAO.memberSelect(id).getName() + "���� ������ �����Ǿ����ϴ�.");
	%>
	
	<a href="main.jsp">����ȭ�� ���ư���</a>
</body>
</html>