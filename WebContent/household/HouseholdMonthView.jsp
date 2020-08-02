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
		<br>
	<h4 align="center">새로운 월 추가</h4>
	<form action="${pageContext.request.contextPath }/hhWriteController" method="post">		
		<input type="hidden" name="type" value="3">
		<input type="hidden" name="category" value="자동생성">
		<input type="hidden" name="content" value=" ">
		<input type="hidden" name="price" value="0">
		<table style="margin-left: auto; margin-right:auto;" >
		<tr>
			<td>날짜 :</td><td><input type="date" name="date"></td>			
		</tr>
		<tr>
			<td></td><td><input type="submit" value="생성"/>
		</tr>
		</table>
	</form>
	<br>
	
	<h4 align="center">해당 월을 클릭하시면 이동합니다</h4>
	<table border="1">
		<tr>
			<th>연도</th><th>월</th><th>입력갯수</th>
		<c:forEach var="m" items="${m }">
			<tr>
				<td>${m.getDate() }</td>
				<td><a href="${pageContext.request.contextPath }/hhGetMonthController?year=${m.getDate()}&month=${m.getContent()}">${m.getContent() }</a></td>
				<td>${m.getKey() }</td>
			</tr>
		</c:forEach>	
	</table>
	

</body>
</html>