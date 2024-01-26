<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	
	</head>
	
	<jsp:include page="../views/head.jsp"></jsp:include> 
	
	<header>
		<!-- navigation -->
	    <nav>
	    	<!-- 로그인 안한 상태 -->
	    	<c:if test="${loginVO == null}">
				<div class="nav-container">
					<div class="nav-1">
						<!-- <a href="/"><img src="https://s3.ap-northeast-2.amazonaws.com/cdn.wecode.co.kr/bearu/logo.png" alt="logo_img"></a> -->
						<a href="/">
							<img class="logo_instagram_txt" src="/resources/project/image/Logo/logo_text.png" alt="logo_text">
						</a>
					</div>
					<form>
						<input id="searchInputs" type="text" name="keyword" value="${pager.keyword}" class="input-search" placeholder="검색">
					</form>
					<div class="nav-2">
						<a href="/boast/list"><img src="https://s3.ap-northeast-2.amazonaws.com/cdn.wecode.co.kr/bearu/logo.png" alt="잇냥그램"></a>
						<a href="#"><img src="/resources/project/image/Logo/dm2.png" alt="DM"></a>
						<!-- <img src="https://s3.ap-northeast-2.amazonaws.com/cdn.wecode.co.kr/bearu/explore.png" alt="탐색"> -->
						<a href="#" ><img src="https://s3.ap-northeast-2.amazonaws.com/cdn.wecode.co.kr/bearu/heart.png" alt="하트"></a>
						<a href="/board/list" ><img src="https://cdn-icons-png.flaticon.com/512/2262/2262154.png" alt="자유게시판"></a>
						<button type="button" class="btn btn-outline-success" id="Logins" data-bs-toggle="modal" data-bs-target="#LoginsModal"> Sign in | Sign up </button>
					</div>
				</div>
			</c:if>
	    	
	    	<!-- 로그인 상태 -->
	    	<c:if test="${loginVO != null}">
				<div class="nav-container">
					<div class="nav-1">
						<!-- <a href="/"><img src="https://s3.ap-northeast-2.amazonaws.com/cdn.wecode.co.kr/bearu/logo.png" alt="logo_img"></a> -->
						<a href="/">
							<img class="logo_instagram_txt" src="/resources/project/image/Logo/logo_text.png" alt="logo_text">
						</a>
					</div>
					<form>
						<input id="searchInputs" type="text" name="keyword" value="${pager.keyword}" class="input-search" placeholder="검색">
					</form>
					<div class="nav-2">
						<a href="/boast/list"><img src="https://s3.ap-northeast-2.amazonaws.com/cdn.wecode.co.kr/bearu/logo.png" alt="Add"></a>
						<a href="#"><img src="/resources/project/image/Logo/dm2.png" alt="DM"></a>
						<!-- <img src="https://s3.ap-northeast-2.amazonaws.com/cdn.wecode.co.kr/bearu/explore.png" alt="탐색"> -->
						<a href="#" ><img src="https://s3.ap-northeast-2.amazonaws.com/cdn.wecode.co.kr/bearu/heart.png" alt="하트"></a>
						<a href="/board/list" ><img src="https://cdn-icons-png.flaticon.com/512/2262/2262154.png" alt="자유게시판"></a> 
						<c:if test="${loginVO.useAt != 'N' && loginVO.useAt == 'A'}">
			            	<a href="../UsersList"><img src="https://w7.pngwing.com/pngs/974/188/png-transparent-computer-icons-user-others.png"></a>
			            </c:if>
						<a id="userUpdates" data-bs-toggle="modal" data-bs-target="#UserUpdateModal" href="#" alt="마이페이지">
							<!-- 프로필 이미지가 없을 경우 -->
							<c:if test="${loginVO.uImg == 'N'}">
								<img class="pic"  alt="프로필IMG" src="/resources/project/image/Logo/cat-4475583_1280.png"> <span>${loginVO.uNick}</span>
							</c:if>
							
							<!-- 프로필 이미지가 있을 경우 -->
							<c:if test="${loginVO.uImg == 'Y'}">
								<img class="pic"  alt="프로필IMG(${loginVO.saveName})" src="/upload/users/${loginVO.fileName}.${loginVO.fileExt}"> <span>${loginVO.uNick}</span>
							</c:if>
						</a>
						<a href="/actionLogout" class="btn btn-outline-secondary"> Logout </a>
					</div>
				</div>
			</c:if>
	    </nav>
		
	</header>
	
	<body>
		<div id="modalDiv">
			<!-- 로그인 모달창 -->
			<div class="modal fade" id="LoginsModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
			  <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable">
			    <div class="modal-content" id="login">
			    
			    </div>
			  </div>
			</div>
			
			<!-- 회원가입 모달창 -->
			<div class="modal fade" id="SignUpsModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
			  <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable">
			    <div class="modal-content" id="signup">
			    	
			    </div>
			  </div>
			</div>
		
			<!-- 회원정보 수정 모달창 -->
			<div class="modal fade" id="UserUpdateModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
			  <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable">
			    <div class="modal-content" id="userUpdate">
			    
			    </div>
			  </div>
			</div>
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
	
		$('#Logins').on( "click", function() {
			//$('#LoginsModal').reload();
			$('#login').load("/logins");
			//$('#login').modal();
			console.log("로그인 모달")
	    });
		
		$('#userUpdates').on( "click", function() {
			if (${loginVO.uNo != null}) {
				var user = `${loginVO.uNo}`;	
			}
			else {
				var user = null;
			}
			//$('#LoginsModal').reload();
			$('#userUpdate').load("/UserUpdate/" + user);
			//$('#userUpadte').modal();
			console.log("유저정보수정 모달")
			console.log(user)
	    });
		
		/* $("#SignUps").on( "click", function() {
			//$('.modal fade').empty();
			$('#signup').load("/SignUps");
			//$('.modal-content').modal();
			console.log("회원가입 모달")
	    }); */
		
	</script>
	
	<script>
		$(document).ready(function() {
			// 카카오 로그인 버튼
			$("#kakao-login-btn").on("click", function() {
				console.log("카카오 로그인")
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
							$("#kakao-login-form input[name=uId]").val(response.id);
							$("#kakao-login-form input[name=uName]").val(response.properties.nickname);
							/* $("input[name=loginType]").val("KAKAO"); */
							/* $("input[name=userId]").val(response.id); */
							/* $("input[name=userNm]").val(response.properties.nickname); */
							/* $("input[name=emailAdres]").val(response.kakao_account.email); */
							$("#kakao-login-form").submit();
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