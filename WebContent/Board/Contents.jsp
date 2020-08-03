<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<script type="text/javascript">
	function del(sequence){
		location.href = "${pageContext.request.contextPath}/DelBoardController?sequence="+sequence;
	}
	function getXMLHttpRequest(){
		var httpRequest = null;
		
		if(window.ActiveXObject){
			try{
				httpRequest = new ActiveXObject("Msxml2.XMLHTTP");
			}catch(e){
				try{
					httpRequest = new ActiveXObject("Microsoft.XMLHTTP");				
				}catch(e2){ httpRequest = null;}
			}
		}
		else if(window.XMLHttpRequest){
			httpRequest = new window.XMLHttpRequest();
		}
		return httpRequest;
	}
	
	function rec(sequence){
		var form = document.getElementById("writeCommentForm");
		var content = form.content.value;
		
		if(!content){
			alert("내용을 입력하세요.");
			return false;
		}
		else{
			var param = "content=" + content +"&sequence=" + parseInt(sequence);
			
			httpRequest = getXMLHttpRequest();
			httpRequest.onreadystatechange = checkFunc;
			httpRequest.open("POST", "http://localhost:8081/Project_semi/WriteController",true);
			httpRequest.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded;charset=UTF-8');
			httpRequest.send(param);
		}
	}
	function checkFunc(){
		if(httpRequest.readyState == 4){
			var resultText = httpRequest.responseText;
			document.location.reload();					
		}
	}
	
	
	function rec(sequence){
		if(<%=request.getAttribute("num") %> == ${b.sequence } ){
			alert("이미 좋아요를 누르셨습니다");
		}
		else {
		location.href = "${pageContext.request.contextPath}/RecController?sequence="+sequence;
			
			
		}
	}

</script>
<style>
</style>
</head>
<body>

<c:if test="${sessionScope.id == b.writer }">
			
		
	<form action="${pageContext.request.contextPath }/Board/EditBoard.jsp" method="post" name="editForm" onsubmit="return check()">
		<h3 >글 읽기 </h3>
		<table border="1">
			<tr>
					<th>글번호</th>
			
			<td colspan="2"><input type="text" value="${b.sequence }" name="sequence" size="45" readonly><br>
			조회수: ${b.viewcount} 추천수: ${b.recommend_cnt}</td>	
			
			</tr>
			<tr >
					<th >작성자: </th>	
					<td><input type="text" value="${b.writer}" name="writer" size="45" readonly></td>
					</tr>	
			<tr >
					<th >작성 날짜</th>
					<td><input type="text" value="${b.time }" name="time" size="45" readonly></td>						
			</tr>
			
			
				
			<tr>
				<th>글 제목</th>

				<td><input type="text" value="${b.title}" name="title" readonly size="45" ></td>

				

			</tr>	
			
			
			
			
			<tr>
				<th>글 내용</th>

				<td><textarea rows="15" cols="45" readonly name="content" >${b.content}</textarea></td>

				

			</tr>	
			<tr>
				<td colspan="2">
					<input type="submit" value="수정" >
					<input type="button" value="삭제" onclick="del(${b.sequence})">
					
				</td>						
			</tr>	
		</table> 
		
		<input type="button" value="추천하기" onclick="rec(${b.sequence})" >
		<input type="button" value="목록으로" onclick="location.href='${pageContext.request.contextPath}/Board/List_free.jsp?pagenum=1'" >
	</form>

	<jsp:include  page="/reply/ReplyList.jsp">
		<jsp:param value="${b.sequence }" name="sequence"/>
	</jsp:include>
</c:if>	
<c:if test="${sessionScope.id != b.writer }">

<h3 >글 읽기</h3>
<form action="${pageContext.request.contextPath }/Board/EditBoard.jsp" method="post">
		<table border="1" cellspacint="0">
			<tr>
					<th>글번호</th>
			
			<td colspan="2"><input type="text" value="${b.sequence }" name="sequence" size="45" readonly><br>
			조회수: ${b.viewcount} 추천수: ${b.recommend_cnt}</td>	
			
			</tr>
			<tr >
					<th >작성자: </th>	
					<td><input type="text" value="${b.writer}" name="writer" size="45" readonly></td>
					</tr>	
			<tr >
					<th >작성 날짜</th>
					<td><input type="text" value="${b.time }" name="time" size="45" readonly></td>						
			</tr>
			
			
				
			<tr>
				<th>글 제목</th>
				<td><input type="text" value="${b.title}" name="title" readonly size="45"  ${str }></td>
			</tr>	
			<tr>
				<th>글 내용</th>
				<td><textarea rows="15" cols="45" readonly name="content" ${str }>${b.content}</textarea></td>
			</tr>	
			
		</table> 
		<input type="button" value="추천하기" onclick="rec(${b.sequence})" >
		<input type="button" value="목록으로" onclick="location.href='${pageContext.request.contextPath}/Board/List_free.jsp?pagenum=1'" >
	</form>
		<jsp:include  page="/reply/ReplyList.jsp">
			<jsp:param value="${b.sequence }" name="sequence"/>
		</jsp:include>
</c:if>
</body>
</html>