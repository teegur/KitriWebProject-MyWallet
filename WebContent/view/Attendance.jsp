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
	<c:if test="${Attendance_flag eq false }">
		출석하였습니다.
	</c:if>
	<c:if test="${Attendance_flag eq true }">
		오늘은 이미 출석하였습니다.
	</c:if>
</body>
</html>