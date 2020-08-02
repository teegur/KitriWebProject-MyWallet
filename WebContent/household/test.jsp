
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
	// Ajax사용 설정
	function getXMLHttpRequest(){
	    var httpRequest = null;
	 
	    if(window.ActiveXObject){
	         try{
	             httpRequest = new ActiveXObject("Msxml2.XMLHTTP");    
	         } catch(e) {
	             try{
	                 httpRequest = new ActiveXObject("Microsoft.XMLHTTP");
	             } catch (e2) { httpRequest = null; }
	         }
	     }
	     else if(window.XMLHttpRequest){
	         httpRequest = new window.XMLHttpRequest();
	     }
	     return httpRequest;    
	 }
	
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
		
		if(document.JoinFormTem.emailCheck.value != "emailCheck") {
			alert("이메일 인증이 필요합니다.");
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
	
	// email 입력창에 새로운 입력이 있을 시
	function inputEmailchk() {
		document.JoinFormTem.emailCheck.value = "emailUncheck";
	}
	
	// 이메일 인증 메시지 전송
	function sendEmail() {
      var emailTxt = document.getElementById("userEmail").value;
      alert(emailTxt);
      if(!emailTxt) {
         alert("이메일을 입력하세요.");
         return false;
      } else {
         //alert(idTxt); // 여기까지 출력됨
         var param = "email="+emailTxt
         httpRequest = getXMLHttpRequest();
         httpRequest.onreadystatechange = callback;
         httpRequest.open("POST","http://localhost:8081/Practice/MailServlet",true);
         httpRequest.setRequestHeader('Content-Type','application/x-www-form-urlencoded'); // 헤더 선언 중요!
         httpRequest.send(param); // email="emailTxt" 전달 / 주소?뒤에 썼다고 생각하면 된다.(request값 설정)
      }    
      return false;
   }
	
	//callback함수 정의
	function callback() {
      if (httpRequest.readyState==4) {
         var resultText = httpRequest.responseText;
         //alert("1");
         //alert(resultText); // 인증번호 정상적으로 보임
         document.JoinFormTem.authKey.value = resultText; // 이부분이 의심됨.
         alert("입력하신 이메일로 인증번호를 전송하였습니다."); // 확인
      }
   }
	function compareKey() {
		var inputKey = document.getElementById("inputKeynum").value;
		var AuthKeynum = document.getElementById("authKeynum").value;
		
		alert(document.getElementById("authKeynum").value);
		alert(document.getElementById("inputKeynum").value);
		
		if (inputKey === AuthKeynum) {
			document.JoinFormTem.emailCheck.value="emailCheck"; // 이메일 체크변수
			alert("인증되었습니다.");
		} else {
			alert("인증번호를 확인하세요.");
			return false;
		}
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
                
                <!-- 작업중 -->
                <div class="form-group row">
                	<div class="col-sm-8">
                  		<input type="text" class="form-control form-control-user" name="email" id="userEmail" placeholder="이메일" onkeydown="inputEmailChk()">
                  	</div>
                  	<div class="col-sm-4">
                  		<input type="button" class="btn btn-dark btn-user btn-block" value="인증번호 전송" onclick="sendEmail()">
                  		<input type="hidden" class="btn btn-dark btn-user btn-block" name="authKey" id="authKeynum" value="@5123gakjlbl3"> <!-- 인증을 위한 키 -->
				  	</div>	
                </div>
                
                <!-- 작업중 -->
                <div class="form-group row">
                	<div class="col-sm-8">
                  		<input type="text" class="form-control form-control-user" id="inputKeynum" placeholder="이메일 인증번호 입력">
                  	</div>
                  	<div class="col-sm-4">
                  		<input type="button" class="btn btn-dark btn-user btn-block" value="인증번호 확인" onclick="compareKey()">
                  		<input type="hidden" name="emailCheck" value="emailUncheck"> <!-- 이메일 체크 확인 변수 -->
				  	</div>	
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