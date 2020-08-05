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
	<c:import url="/view/Menu.jsp" /> <!-- 메뉴페이지 -->
	<br>
	<div style="text-align:center;"><a class="btn btn-dark" href="${pageContext.request.contextPath }/MemberAttendanceController" target="_blank" onClick="window.open(this.href, '', 'width=300px, height=150px'); return false;">출석 체크</a></div>
	<br><br>
	<c:import url="/AttendanceCalendarController" />
</body>
</html>