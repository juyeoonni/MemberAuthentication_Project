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
	<h2>ȸ������ �������Դϴ�.</h2>
	�Ʒ��� �ۼ��ϼ���.
	<form action="joinOk.jsp" method="post"> <br/>
	
		�̸�: <input type="text" name="name"> <br/>
		���̵�: <input type="text" name="id"> <br/>
		��й�ȣ: <input type="password" name="pw"> <br/>
		��ȭ��ȣ1: <input type="text" name="phone1"> <br/>
		��ȭ��ȣ2: <input type="text" name="phone2"> <br/>
		��ȭ��ȣ3: <input type="text" name="phone3"> <br/>
		����: <input type="text" name="gender"> <br/><br/>
		
		<input type="submit" value="����"> <br/>
	
	</form>
	
</body>
</html>