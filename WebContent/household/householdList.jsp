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
	<c:import url="/household/householdWrite.jsp" /> <!-- 가계부 작성 폼 -->
	<br>
	<table border="1">
		<tr>
			<th>날짜</th><th>카테고리</th><th>내용</th><th>금액</th><th>종류</th>
		</tr>
		<c:forEach var="h" items="${h }">
			<tr>
				<td>${h.getDate() }</td>
				<td>${h.getCategory() }</td>
				<td>${h.getContent() }</td>
				<td>${h.getPrice() }</td>
				<td>
					<c:if test="${h.getType() eq 1 }"> <!-- 수입 -->
						수입
					</c:if>
					<c:if test="${h.getType() eq 0 }"> <!-- 지출 -->
						지출
					</c:if>
				</td>
			</tr>
		</c:forEach>
	
	</table>
	
	
</body>
</html>