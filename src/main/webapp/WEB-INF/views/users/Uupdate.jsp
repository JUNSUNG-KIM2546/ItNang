<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title> 있냥?! Profile Update </title>
</head>

	<jsp:include page="../head.jsp"></jsp:include>
	
<body>

	<!-- Modal -->
	<div class="modal-header">
		<h1 class="modal-title fs-5" id="exampleModalLabel">Profile Update</h1>
		<button type="button" class="btn-close" id="reset1" data-bs-dismiss="modal" aria-label="Close"></button>
	</div>
	
	<div class="modal-body">
		<div class="login-wrapper">
			<img src="../resources/project/image/Logo/너두있냥.png" alt="">
			<h2><span style="text-shadow:2px 2px 2px #000;">Profile Update</span></h2>
	
			<!-- 폼에 액션이 없으면 주소 그대로 보낸다 -->
			<form action="/UserUpdate/${loginVO.uNo}" id="login-form" method="post">
				<div>
					<!-- 프로필 이미지가 없을 경우 -->
					<c:if test="">
						<img alt="프로필IMG" src="/resources/project/image/Logo/cat-4475583_1280.png">
					</c:if>
					
					<!-- 프로필 이미지가 있을 경우 -->
					<c:if test="">
						<img alt="프로필IMG" src="">
					</c:if>
					<input type="file" name="uImg" value="${uImg}">
				</div>
				<hr>
				<input type="hidden" name="uNo" value="${uNo}" readonly>
				
				<label>닉네임</label>
				<input type="text" name="uNick" value="${item.uNick}" placeholder="닉네임">
			
				<label>아이디</label>
				<input type="text" name="uId" value="${item.uId}" placeholder="ID" readonly>
			
				<label>비밀번호</label>
		    	<input type="password" name="uPass" value="${item.uPass}" placeholder="Password">
		    	<!-- <input type="password" name="passC" placeholder="Password 확인"> -->

				<label>이름</label>
				<input type="text" name="uName" value="${item.uName}" placeholder="Name">
		    
				<label>E-Mail</label>
				<input type="text" name="uEmail" value="${item.uEmail}" placeholder="E-Mail">
		    
				<label>연락처</label>
				<input type="text" name="uPhone" value="${item.uPhone}" placeholder="Phone">
		    
				<label>소개</label>
				<input type="text" name="uDetail" value="${item.uDetail}" placeholder="Detail">
			    <input type="submit" value="Update" >
			</form>
		</div>
	</div>
    
    <div class="modal-footer">
		<button type="button" class="btn btn-secondary" id="reset2" data-bs-dismiss="modal">닫기</button>
    </div>
	
</body>
</html>