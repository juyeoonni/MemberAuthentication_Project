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
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	
	MemberDAO memberDAO = new MemberDAO();
	
	if(memberDAO.loginCheck(id, pw)){
		// �α��ο� ������ ��� ���ǿ� id�� pw ����
		session.setAttribute("id", id);
		session.setAttribute("pw", pw);
			response.sendRedirect("main.jsp");
	} else {
		out.println("�α��� �����Ͽ����ϴ�.");
		response.sendRedirect("login.jsp");
	}
	
	%>
</body>
</html>