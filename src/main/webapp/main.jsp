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
		// ���ǿ��� id �Ӽ����� �����ͼ� ���ڿ��� ����
		// �̴� ���� �α��� �������� ����� ����� ���̵�
		String id = (String)session.getAttribute("id");
		out.println(id);
		
		String pw = (String)session.getAttribute("pw");
		
		MemberDAO memberDAO = new MemberDAO();
		out.println(memberDAO.memberSelect(id).getName() + "��, ȯ���մϴ�!");
	%>
	
	<a href="logout.jsp">�α׾ƿ�</a> <br />
	<a href="modify.jsp">ȸ������ ����</a> <br />
	
	
	
</body>
</html>