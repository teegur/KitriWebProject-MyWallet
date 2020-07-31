<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- request의 m객체에 정보저장 -->
	<form action="#" method="post" onsubmit="return check()" name="insertForm">
		아이디 : <input type="text" name="id" value="${m.id}" readonly><br>
		비밀번호 : <input type="password" name="pwd" value="${m.password }"><br>
		이름 : <input type="text" name="name" value="${m.name }"><br>
		
		
	</form>
</body>
</html>