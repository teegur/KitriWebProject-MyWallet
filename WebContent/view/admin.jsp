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
	<h3>관리페이지</h3>
	<table border="1">
		<tr>
			<th>아이디</th><th>이름</th><th>이메일</th><th>주소</th><th>상태</th><th>회원등급</th><th>관리</th>
			<c:forEach var="m" items="${m }">
				<c:if test="${m.getId() ne 'admin' }"> <!-- 관리자가 아닐때만 출력 -->
					<tr>
						<td>${m.getId() }</td>
						<td>${m.getName() }</td>
						<td>${m.getEmail() }</td>
						<td>${m.getAddress() }</td>
						<td>${m.getStatus() }</td>
						<td>${m.getCls() }</td>
						<td><a href="${pageContext.request.contextPath }/MemberDelController?id=${m.getId() }">삭제</a></td>
					</tr>
				</c:if>
			</c:forEach>
		</tr>
		
	</table>
</body>
</html>