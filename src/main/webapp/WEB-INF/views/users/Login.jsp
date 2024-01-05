<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>있냥?! 로그인</title>
    <style>
    </style>
</head>

<jsp:include page="../head.jsp"></jsp:include>

<body>

	<!-- Modal -->
    <div class="modal-header">
      <h1 class="modal-title fs-5" id="exampleModalLabel">있냥?! 로그인</h1>
      <button type="button" class="btn-close" id="reset1" data-bs-dismiss="modal" aria-label="Close"></button>
    </div>
    
    <div class="modal-body">
    	<div class="login-wrapper">
	        <img src="../resources/project/image/Logo/여기있냥.png" alt="">
	        <h2><span style="text-shadow:2px 2px 2px #000;">Login</span></h2>
	        <!-- 폼에 액션이 없으면 주소 그대로 보낸다 -->
	        <form id="login-form" method="post" action="/actionLogin">
	            <input type="text" name="id" placeholder="ID">
	            <input type="password" name="pass" placeholder="Password">
	            <label for="remember-check">
	                <input type="checkbox" id="remember-check">아이디 저장
	            </label>
	            <input type="submit" value="Login">
	        </form>
	        
	        <!-- 카카오 로그인 -->
			<div class="btn-cont" style="text-align: center;">
				<!-- 카카오 로그인 버튼을 비활성화 상태로 시작 -->
				<a class="btn-kakao" id="kakao-login-btn" href="#"
					data-type="login" style="display: inline-block;"> <img
					src="../resources/project/image/Logo/kakao_login_medium_wide.png"
					alt="카카오 로그인 버튼" style="margin: 0 auto;" />
				</a>
			</div>
			<!-- 카카오 로그인/회원가입 폼 -->
			<form action="/kakaoLogin" id="joinFrm" name="joinFrm"
				method="post">
				<input type="hidden" name="userId" /> <input type="hidden"
					name="userName" />
				<!-- <input type="hidden" name="loginType" value=""/> -->
				<!-- <input type="hidden" name="userId" /> -->
				<!-- <input type="hidden" name="userNm" /> -->
				<!-- <input type="hidden" name="emailAdres" /> -->
			</form>
			<hr>
			<!-- <button type="button" class="btn btn-outline-info" id="SignUps" data-bs-toggle="modal" data-bs-target="#SignUpsModal"> 아직dwqdqwdwqdqwdwq </button> -->
	    	<p>아직 회원이 아니신가요? <a href="#" class="link-info link-offset-2 link-underline-opacity-25 link-underline-opacity-100-hover" id="SignUps" data-bs-toggle="modal" data-bs-target="#SignUpsModal"> 가입하기 </a></p>
    	</div>
    </div>
    
    
    
    <div class="modal-footer">
      <button type="button" class="btn btn-secondary" data-bs-dismiss="modal" id="reset2">닫기</button>
    </div>
    
</body>

<script>
	$('#reset2').on( "click", function() {
		$('#modalDiv')[0].reset();
		console.log("리셋")
	});
	$('#reset1').on( "click", function() {
		$('#modalDiv')[0].reset();
		console.log("리셋")
	});
	
	$("#SignUps").on( "click", function() {
		//$('.modal fade').empty();
		$('#signup').load("/SignUps");
		//$('.modal-content').modal();
		console.log("회원가입 모달")
    });
</script>

<script>
	$(document).ready(function() {
		// 카카오 로그인 버튼
		$(".btn-kakao").click(function() {
			const type = $(this).data("type");
			kakaoLogin(type);
			return false;
		});
	});

	// 카카오 키 정보 입력 (본인 JAVASCRIPT키)
	Kakao.init('a2934dc1e36b528c374fc8c1f2fa06ca');

	// 카카오SDK 초기화 
	Kakao.isInitialized();

	// 카카오 로그인
	function kakaoLogin(type) {
		Kakao.Auth.login({
			success : function(response) {
				Kakao.API.request({url : '/v2/user/me',
					success : function(response) {
						console.log(response)
						$("#joinFrm input[name=userId]").val(response.id);
						$("#joinFrm input[name=userName]").val(response.properties.nickname);
						/* $("input[name=loginType]").val("KAKAO"); */
						/* $("input[name=userId]").val(response.id); */
						/* $("input[name=userNm]").val(response.properties.nickname); */
						/* $("input[name=emailAdres]").val(response.kakao_account.email); */
						$("#joinFrm").submit();
					},
					fail : function(error) {
						console.log(error)
					},
				})
			},
			fail : function(error) {
				console.log(error)
			},
		})
	}
	
	<c:if test="${not empty message}">
		alert("${message}");
	</c:if>
	
	<c:if test="${not empty loginMessage}">
		alert("${loginMessage}");
	</c:if>
</script>
	
</html>