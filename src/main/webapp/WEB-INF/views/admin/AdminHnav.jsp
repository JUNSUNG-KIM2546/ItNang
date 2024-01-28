<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	
	</head>
	
	
	<!-- navigation -->
    <nav class="navbar top-navbar navbar-expand-md navbar-dark">
        <div class="navbar-header" data-logobg="skin6">
            <!-- ============================================================== -->
            <!-- Logo -->
            <!-- ============================================================== -->
            <a class="navbar-brand ms-4" href="/Admin/Dashboard">
                <!-- Logo icon -->
                <b class="logo-icon">
                    <!--You can put here icon as well // <i class="wi wi-sunset"></i> //-->
                    <!-- Dark Logo icon -->
                    <img style="width: 50px; height: 50px;" src="/resources/project/image/Logo/cat-4475583_1280.png" alt="homepage" class="dark-logo" />

                </b>
                <!--End Logo icon -->
                <!-- Logo text -->
                <span class="logo-text">
                    <!-- dark Logo text -->
                    <img src="/resources/project/image/Logo/logo_text(W).png" alt="homepage" class="dark-logo" />

                </span>
            </a>
            <!-- ============================================================== -->
            <!-- End Logo -->
            <!-- ============================================================== -->
            <!-- ============================================================== -->
            <!-- toggle and nav items -->
            <!-- ============================================================== -->
            <a class="nav-toggler waves-effect waves-light text-white d-block d-md-none"
                href="javascript:void(0)"><i class="ti-menu ti-close"></i></a>
        </div>
        <!-- ============================================================== -->
        <!-- End Logo -->
        <!-- ============================================================== -->
        <div class="navbar-collapse collapse" id="navbarSupportedContent" data-navbarbg="skin5">
            <ul class="navbar-nav d-lg-none d-md-block ">
                <li class="nav-item">
                    <a class="nav-toggler nav-link waves-effect waves-light text-white "
                        href="javascript:void(0)"><i class="ti-menu ti-close"></i></a>
                </li>
            </ul>
            <!-- ============================================================== -->
            <!-- toggle and nav items -->
            <!-- ============================================================== -->
            <ul class="navbar-nav me-auto mt-md-0 ">
                <!-- ============================================================== -->
                <!-- Search -->
                <!-- ============================================================== -->

                <li class="nav-item search-box">
                    <a class="nav-link text-muted" href="javascript:void(0)"><i class="ti-search"></i></a>
                    <form class="app-search" style="display: none;">
                        <input type="text" class="form-control" placeholder="Search &amp; enter"> <a
                            class="srh-btn"><i class="ti-close"></i></a> </form>
                </li>
            </ul>

            <!-- ============================================================== -->
            <!-- Right side toggle and nav items -->
            <!-- ============================================================== -->
            <ul class="navbar-nav">
                <!-- ============================================================== -->
                <!-- User profile and search -->
                <!-- ============================================================== -->
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle text-muted waves-effect waves-dark" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                        <img alt="프로필IMG(${loginVO.saveName})" src="/upload/users/${loginVO.fileName}.${loginVO.fileExt}" class="profile-pic me-2"><span>${loginVO.uNick}님</span>
                    </a>
                    <ul class="dropdown-menu" aria-labelledby="navbarDropdown"></ul>
                </li>
            </ul>
        </div>
    </nav>
		
	
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