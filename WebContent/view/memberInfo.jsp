<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script>
function check() {
	var idTxt = document.InsertForm.id;
	var pwTxt = document.InsertForm.pwd;
	var nameTxt = document.InsertForm.name;
	var emailTxt = document.InsertForm.email;
	var addressTxt = document.InsertForm.address;
	
	//alert("?"); //출력확인
	
	
	if (pwTxt.value=="") {
		alert("비밀번호를 입력하세요")
		pwTxt.value=""
		pwTxt.focus();
		return false;
	}
	
	if (nameTxt.value=="") {
		alert("이름을 입력하세요")
		nameTxt.value=""
		nameTxt.focus();
		return false;
	}
	
	if (emailTxt.value=="") {
		alert("이메일을 입력하세요")
		emailTxt.value=""
		emailTxt.focus();
		return false;
	}
	
	if (addressTxt.value=="") {
		alert("주소를 입력하세요")
		addressTxt.value=""
		addressTxt.focus();
		return false;
	}
}
	
</script>
<body>
	<!-- request의 m객체에 정보저장 -->
	<c:import url="/view/Menu.jsp" />
	<form action="${pageContext.request.contextPath }/MemberEditController" method="post" name="InsertForm" onsubmit="return check()">
		아이디 : <input type="text" name="id" value="${m.id }" readonly><br>
		비밀번호 : <input type="password" name="pwd" value="${m.password }"><br>
		이름 : <input type="text" name="name" value="${m.name }"><br>
		이메일 : <input type="text" name="email" value="${m.email }"><br>
		주소 : <input type="text" name="address" value="${m.address }"><br>
		상태 : <input type="text" name="status" value="${m.status }" readonly><br>
		등급 : <input type="text" name="cls" value="${m.cls }" readonly><br>
		<input type="submit" value="정보수정"><br>
		<a href="${pageContext.request.contextPath }/DelController">회원탈퇴</a>
	</form>
</body>
</html>