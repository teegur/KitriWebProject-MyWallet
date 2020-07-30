<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
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

function hhWrite(){
	var form = document.getElementById("hhWriteForm");
	var type = form.type.value;
	var date = form.type.value;
	var category = form.type.value;
	var content = form.content.value;
	var price = form.type.value;
		
	if(!category || !content ||   ){
		alert("공란이 있습니다");
		return false;
	}
	else{
		var param = "content=" + content;
		
		httpRequest = getXMLHttpRequest();
		httpRequest.onreadystatechange = checkFunc;
		httpRequest.open("POST", "http://localhost:8081/Practice1/WriteController",true);
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
</script>
</head>
<body>
	<form action="" id="hhWriteForm">
		<input type="radio" name="type" value="0">지출<input type="radio" name="type" value="1">수입<br>
		날짜 : <input type="date" name="date"><br>
		카테고리 : <input type="text" name="category"><br>
		내용 : <input type="text" name="content"><br>
		금액 : <input type="number" name="price"><br>
		<input type="button" value="작성 완료" onclick="hhWrite()"><input type="reset" value="초기화">	
	</form>
</body>
</html>