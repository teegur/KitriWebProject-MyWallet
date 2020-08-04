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

function hhWrite(year, month){
	var form = document.getElementById("hhWriteForm");
	var type = form.type.value;
	var date = form.date.value;
	var category = form.category.value;
	var content = form.content.value;
	var price = form.price.value;
	
	
	if(!category || !content || !price || !type ){ // 여기까지 했음.
		alert("공란이 있습니다");
		return false;
	}
	else{
		if(year != date.substring(0,4) || month !=date.substring(5,7)){
			alert("연도와 월이 다릅니다");
			return false;
		}
		else{
			var param = "content=" + content + "&type=" + type + "&date=" + date + "&category=" + category + "&price=" + price;
		
		
			httpRequest = getXMLHttpRequest();
			httpRequest.onreadystatechange = checkFunc;
			httpRequest.open("POST", "http://localhost:8081/Project_semi/hhWriteController",true);
			httpRequest.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded;charset=UTF-8');
			httpRequest.send(param);
		}
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
<c:import url="/hhGetCatAllController"/>
	<form class="form-group" action="" id="hhWriteForm">
		<table style="margin-left: auto; margin-right:auto;" >
		<tr>
			<td></td><td><input type="radio" name="type" value="0">지출<input type="radio" name="type" value="1">수입</td>
		</tr>
		<tr>
			<td>날짜 :</td><td><input class="form-control" type="date" name="date"></td>
		</tr>
		<tr>
			<td>카테고리 :</td> 
			<td>				
				<select name="category" id="category">
				<c:forEach var="cat" items="${cat}">
				<c:if test="${cat.category ne '자동생성'}">
				<option value="${cat.category }">${cat.category }</option>	
				</c:if>	
				</c:forEach>		
				</select>
			</td>
			<td>
				<input type="button" onclick="categoryDelete()" value="선택 카테고리 삭제">
			</td>
		</tr>
		
		<tr>
		<td></td>			
			<td><input class="form-control" type="text" name="addcategory"></td>
			<td><input type="button" onclick="hhCategoryWrite(${year}, ${month})" value="카테고리추가"></td>	
		</tr>
		
		<tr>
			<td>내용 :</td><td><input class="form-control" type="text" name="content"></td>
		</tr>
		<tr>
			<td>금액 :</td>
			<td><input class="form-control" type="number" name="price"></td>
		</tr>
		<tr>
			<td></td>
			<td><input class="btn btn-dark" type="button" value="작성 완료" onclick="hhWrite(${year},${month})"> 
			<input class="btn btn-secondary" type="reset" value="초기화"></td>	
		</tr>
		</table>
	</form>
</body>
</html>