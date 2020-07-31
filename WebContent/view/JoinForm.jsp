<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Kitri - Register</title>

  <!-- Custom fonts for this template-->
  <link href="${pageContext.request.contextPath }/startbootstrap-sb-admin-2-gh-pages/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

  <!-- Custom styles for this template-->
  <link href="${pageContext.request.contextPath }/startbootstrap-sb-admin-2-gh-pages/css/sb-admin-2.min.css" rel="stylesheet">

<script>
	function check() {
		var idTxt = document.JoinFormTem.id;
		var pwTxt = document.JoinFormTem.pwd;
		var nameTxt = document.JoinFormTem.name;
		var emailTxt = document.JoinFormTem.email;
		var addressTxt = document.JoinFormTem.address;
		
		//alert("?"); //출력확인
		
		if (idTxt.value=="") {
			alert("아이디를 입력하세요")
			idTxt.value=""
			idTxt.focus();
			return false;
		}
		
		if(document.JoinFormTem.idDuplication.value != "idCheck") {
			alert("아이디 중복체크를 해주세요.");
			return false;
		}
		
		if (pwTxt.value=="") {
			alert("비밀번호를 입력하세요")
			pwTxt.value=""
			pwTxt.focus();
			return false;
		}
		
		if (nameTxt.value=="") {
			alert("이름을 입력하세요")
			nameTxt.value=""
			nameTxt.focus();
			return false;
		}
		
		if (emailTxt.value=="") {
			alert("이메일을 입력하세요")
			emailTxt.value=""
			emailTxt.focus();
			return false;
		}
		
		if (addressTxt.value=="") {
			alert("주소를 입력하세요")
			addressTxt.value=""
			addressTxt.focus();
			return false;
		}
	}
		
		// 아이디 중복체크 화면 (중복확인 버튼 누를 때 실행)
	function openIdChk() {
		window.name = "parentForm";
		window.open("idCheckForm.jsp","chkForm","width=500, height=300, resizable=no, scrollbars=no");
	}
		
		// id 입력창에 새로운 입력이 있을 시 바로 uncheck
	function inputIdChk() {
		document.JoinFormTem.idDuplication.value = "idUncheck";
	}
</script>
</head>

<body class="bg-gradient-dark">
  <div class="container" style = "padding-left: 9.5rem; padding-right: 9.5rem;">

    <div class="card o-hidden border-0 shadow-lg my-5">
      <div class="card-body p-1">
        <!-- Nested Row within Card Body -->
        <div class="row">
          
          <div class="col-lg-9 mx-auto">
            <div class="p-5">
              <div class="text-center">
                <h1 class="h4 text-gray-900 mb-4">회원 가입</h1>
              </div>
              <form class="user" name="JoinFormTem" action="${pageContext.request.contextPath }/JoinController" onsubmit="return check()" >
                <div class="form-group row">
                  <div class="col-sm-8">
                    <input type="text" class="form-control form-control-user" name="id" maxlength="20" placeholder="아이디" onkeydown="inputIdChk()">
                  </div>
                  <div class="col-sm-4">
                  		<input type="button" class="btn btn-dark btn-user btn-block" value="중복확인" onclick="openIdChk()">
						<input type="hidden" name="idDuplication" value="idUncheck">
				  </div>
                </div>
                  <div class="form-group">
                    <input type="password" class="form-control form-control-user" name="pwd" placeholder="패스워드">
                  </div>
                
                <div class="form-group">
                    <input type="text" class="form-control form-control-user" name="name" placeholder="이름">
                </div>
                <div class="form-group">
                  <input type="text" class="form-control form-control-user" name="email" placeholder="이메일">
                </div>
                <div class="form-group">
                  <input type="text" class="form-control form-control-user" name="address" placeholder="주소">
                </div>
                
                <input type="submit" value="회원가입" class="btn btn-dark btn-user btn-block">
                <hr>
               </form>
             <!-- 
              <hr>
              <div class="text-center">
                <a class="small" href="forgot-password.html">Forgot Password?</a>
              </div>
              <div class="text-center">
                <a class="small" href="login.html">Already have an account? Login!</a>
              </div>
              -->
            </div>
          </div>
        </div>
      </div>
    </div>

  </div>

  <!-- Bootstrap core JavaScript-->
  <script src="${pageContext.request.contextPath }/startbootstrap-sb-admin-2-gh-pages/vendor/jquery/jquery.min.js"></script>
  <script src="${pageContext.request.contextPath }/startbootstrap-sb-admin-2-gh-pages/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Core plugin JavaScript-->
  <script src="${pageContext.request.contextPath }/startbootstrap-sb-admin-2-gh-pages/vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Custom scripts for all pages-->
  <script src="${pageContext.request.contextPath }/startbootstrap-sb-admin-2-gh-pages/js/sb-admin-2.min.js"></script>

</body>

</html>