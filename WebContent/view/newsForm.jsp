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
	<table>
		<tr>
			<th>제목</th><th>날짜</th>
		</tr>
		<c:forEach var="m" items="${news }">
			<tr>
				<td><a href="${m.getLink() }">${m.getTitle() }</a></td>
				<td>${m.getPubDate() }</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>