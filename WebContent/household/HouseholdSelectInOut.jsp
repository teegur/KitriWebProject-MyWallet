<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:import url="/view/Menu.jsp" />
	<h4 align="center"><a href = "${pageContext.request.contextPath }/hhSelectMonthController"> 가계부 작성 </a></h4><br>	
	<h4 align="center"><a href = "${pageContext.request.contextPath }/hhSelectMonthController2"> 월별 통계 보기 </a></h4>
</body>
</html>