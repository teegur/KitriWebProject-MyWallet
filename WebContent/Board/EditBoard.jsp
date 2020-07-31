<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3 >글수정하기<br></h3>

	<form action="${pageContext.request.contextPath }/EditBoardController" method="post">
		<table border="2"	cellspacing="0"	>
			<tr>
			<tr>
					<th>글번호</th>
			<td colspan="2"><input type="text" value="<%=request.getParameter("sequence") %>" name="sequence" size="45" readonly><br>조회수: ${b.viewcount} 
					추천수: ${b.recommend_cnt}</td>	
			</tr>
			<tr >
					<th >작성자 </th>	
					<td><input type="text" value="<%=request.getParameter("writer") %>" name="writer" size="45" readonly></td>
					</tr>	
			<tr >
					<th >작성 날짜</th>
					<td><input type="text" value="<%=request.getParameter("time") %>" name="time" size="45" readonly><br></td>						
			</tr>	
			<tr>
				<th>글 제목</th>
				<td><input type="text" value="<%=request.getParameter("title") %>" name="title" size="45" ${str }></td>
			</tr>	
			<tr>
				<th>글 내용</th>
				<td><textarea rows="15" cols="45" name="content" ${str }><%=request.getParameter("content") %></textarea></td>
			</tr>	
			<tr>
				<td colspan="2">
					<input type="submit" value="수정">
					<input type="reset" value="취소">
				</td>
			</tr>		
		</table>
	</form>
</body>
</html>