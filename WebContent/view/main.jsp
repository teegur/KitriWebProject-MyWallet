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
	<!-- 윗부분에는 menu.jsp 인클루드 -->
	<c:import url="/view/Menu.jsp" />
	<%
		boolean flag = false;
		if(!session.isNew()) {
			flag = (boolean) session.getAttribute("flag"); // LoginController에서 flag값을 저장.
		}
		if (flag) {%>
			<!-- 로그인된 경우 -->
			<h1>로그인 되었습니다</h1>
			<a href="${pageContext.request.contextPath }/LogoutController">로그아웃</a>
		<%} else { %>
			<!--  로그아웃한 경우 -->
			<h1>로그아웃 되었습니다(꾸며야함)</h1>
		<%}%>
</body>
</html>