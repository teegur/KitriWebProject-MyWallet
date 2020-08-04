<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://kit.fontawesome.com/a876b41567.js" crossorigin="anonymous"></script>
</head>
<body>
	<c:import url="/view/Menu.jsp" />
	
<!-- Page Wrapper -->
<div id="wrapper">

<!-- Content Wrapper -->
<div id="content-wrapper" class="d-flex flex-column">

  <!-- Main Content -->
<div id="content">

  <!-- Begin Page Content -->
<div class="container-fluid">
	
<div class="row">
	<div class="col-lg-6">
	<div class="card mb-4" style="width:500px; height:200px;">
		<div class="card-header py-3" style="margin-left: 0px; margin-right: 0px; text-align:center">
                   	가계부 작성
        </div>
	    <div class="card-body">
			 <a class="col btn btn-primary btn-lg btn-block" href = "${pageContext.request.contextPath }/hhSelectMonthController"> 
			 <i  style="font-size:60px;" class="fas fa-edit"></i> 
			 </a>	
		</div>
	</div>
	</div>
	
	<div class="col-lg-6">
	<div class="card mb-4" style="width:500px; height:200px;">
		<div class="card-header py-3" style="margin-left: 0px; margin-right: 0px; text-align:center">
                   	월별 통계 보기
        </div>
	    <div class="card-body">
			 <a class="col btn btn-danger btn-lg btn-block" href = "${pageContext.request.contextPath }/hhSelectMonthController2"> 
			 <i style="font-size:60px;" class="fas fa-signal"></i> 
			 </a>
		</div>
	</div>
	</div>
</div>
	
	
	</div>
     <!-- /.container-fluid -->

   </div>
   <!-- End of Main Content -->
      
	<!-- Footer -->
	<footer class="sticky-footer bg-white">
	  <div class="container my-auto">
	    <div class="copyright text-center my-auto">
	      <span>Copyright &copy; Wallet team</span>
	    </div>
	  </div>
	</footer>
	<!-- End of Footer -->
      
     </div>
  <!-- End of content Wrapper -->
</div>
<!-- End of Page Wrapper -->

	
</body>
</html>