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
		<nav>
			<div class="nav">
		        <div class="logo">
		        	<a href="/"><img src="../resources/project/image/Logo/여기있냥.png" alt=""></a>
		            
		        </div>
		        <div class="nav_but">
		            <a href="main/Boast"><img src="../resources/project/image/menuimg/메뉴이미지1-3.png"> 냥이 자랑 </a>
		            <a href="main/Recommend"><img src="../resources/project/image/menuimg/메뉴이미지2-3.png"> 추천게시판 </a>
		            <a href="main/Sharing"><img src="../resources/project/image/menuimg/메뉴이미지3-3.png"> 나눔게시판 </a>
		            <a href="../board/list"><img src="../resources/project/image/menuimg/메뉴이미지4-3.png"> 자유게시판 </a>
		        </div>
		        <!-- 로그인 안한 상태 -->
		        <c:if test="${loginVO == null}">
			        <div class="nav2_but">
			            <!-- <a href="../Logins" onclick="window.open(this.href, '_blank', 'width=450, height=600'); return false;">로그인</a> -->
			            <!-- <a href="../SingUps" onclick="window.open(this.href, '_blank', 'width=450, height=700'); return false;" >회원가입</a> -->
			            <button type="button" class="btn btn-outline-success" id="Logins" data-bs-toggle="modal" data-bs-target="#LoginsModal"> Sign in | Sign up </button>
			            <!-- <button type="button" class="btn btn-outline-info" id="SignUps" data-bs-toggle="modal" data-bs-target="#SignUpsModal"> 회원가입 </button> -->
			            
			            <!-- Button trigger modal -->
			        </div>
		        </c:if>
		        <!-- 로그인 상태 -->
		        <c:if test="${loginVO != null}">
			        <div class="nav2_but">
			            <p>${loginVO.id}님 환영합니다.</p>
			        </div>
		        </c:if>
		        
		    </div>
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
	
		$("#Logins").on( "click", function() {
			//$('#LoginsModal').reload();
			$('#login').load("/logins");
			//$('#login').modal();
			console.log("로그인 모달")
	    });
		
		/* $("#SignUps").on( "click", function() {
			//$('.modal fade').empty();
			$('#signup').load("/SignUps");
			//$('.modal-content').modal();
			console.log("회원가입 모달")
	    }); */
		
	</script>
	
</html>