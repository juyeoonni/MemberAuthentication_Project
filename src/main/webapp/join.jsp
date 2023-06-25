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
	<h2>회원가입 페이지입니다.</h2>
	아래를 작성하세요.
	<form action="joinOk.jsp" method="post"> <br/>
	
		이름: <input type="text" name="name"> <br/>
		아이디: <input type="text" name="id"> <br/>
		비밀번호: <input type="password" name="pw"> <br/>
		전화번호1: <input type="text" name="phone1"> <br/>
		전화번호2: <input type="text" name="phone2"> <br/>
		전화번호3: <input type="text" name="phone3"> <br/>
		성별: <input type="text" name="gender"> <br/><br/>
		
		<input type="submit" value="전송"> <br/>
	
	</form>
	
</body>
</html>