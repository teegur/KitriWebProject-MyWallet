<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>

</script>
</head>
<body>
	<!-- 윗부분에는 menu.jsp 인클루드 -->
	<c:import url="/view/Menu.jsp" />
	<!-- 메인 창에 무엇을 할지 정해야한다. -->
	<!-- 꾸며야하는 공간입니다 -->
	
<!-- Page Wrapper -->
<div id="wrapper">

<!-- Content Wrapper -->
<div id="content-wrapper" class="d-flex flex-column">

  <!-- Main Content -->
 <div id="content">

   <!-- Begin Page Content -->
   <div class="container-fluid">
	   
	   <!-- 내용 들어갈 부분 -->
	   
	   <div class="row">

            <div class="col-lg-6">

              <!-- card-1 -->
              <div class="card mb-4">
                <div class="card-body">
                  여기에 적당한 이미지 넣을거임
                  <br>
                  <br><br><br><br><br><br><br>
                  <br><br><br><br><br><br><br>
                  <br><br><br><br><br><br>
                </div>
              </div>

              

            </div>

            <div class="col-lg-6">

              <!-- card-3 -->
              <div class="card mb-4">
                <div class="card-header py-3" style="margin-left: 0px; margin-right: 0px; text-align:center">
                   	<b>공지사항</b>
                </div>
                <div class="card-body">
                  <c:import url="/MainNoticeListController" />
                </div>
              </div>

              <!-- card-4 -->
              <div class="card mb-4">
                <div class="card-header py-3" style="margin-left: 0px; margin-right: 0px; text-align:center">
                   	<b>지금 이시각 주요 경제 뉴스</b>
                </div>
                <div class="card-body">
                  <c:import url="/NaverNewsApiController" />
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