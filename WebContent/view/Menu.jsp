<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
</head>
<body>
<jsp:include page ="./Design.jsp" /> 
<nav class="navbar navbar-expand-md bg-dark navbar-dark">
  <a class="navbar-brand" href="#">Navbar</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="collapsibleNavbar">
    <ul class="navbar-nav">
      <li class="nav-item" style="width:200px">
        <a class="nav-link" href="${pageContext.request.contextPath }/notice/List_notice.jsp?pagenum=1">공지사항</a>
      </li>
      <li class="nav-item" style="width:200px">
        <a class="nav-link" href="${pageContext.request.contextPath }/Board/List_free.jsp?pagenum=1">자유게시판</a>
      </li>
      <li class="nav-item" style="width:200px">
        <a class="nav-link" href="${pageContext.request.contextPath }/hhListController">가계부작성</a>
      </li>    
    </ul>
  </div>  
</nav>
<br>
</body>
</html>