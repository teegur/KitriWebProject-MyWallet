<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
	window.onbeforeunload = closingCode;
	function closingCode(){
		// do something...
		System.out.println("종료");
		return null;
	}
</script>
</head>
<body>
	<!-- 윗부분에는 menu.jsp 인클루드 -->
	<c:import url="/view/Menu.jsp" />
	<!-- 메인 창에 무엇을 할지 정해야한다. -->
	<!-- 꾸며야하는 공간입니다 -->
</body>
</html>