<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title> 있냥?! Profile Select </title>
</head>

	<jsp:include page="../head.jsp"></jsp:include>
	
<body>

	<!-- Modal -->
	<div class="modal-header">
		<h1 class="modal-title fs-5" id="exampleModalLabel">Profile Select</h1>
		<button type="button" class="btn-close" id="reset1" data-bs-dismiss="modal" aria-label="Close"></button>
	</div>
	
	<div class="modal-body">
		<div class="login-wrapper">
			<img src="../resources/project/image/Logo/너두있냥.png" alt="">
			<h2><span style="text-shadow:2px 2px 2px #000;">Profile Select</span></h2>
	
			<!-- 폼에 액션이 없으면 주소 그대로 보낸다 -->
			<div id="login-form">
				<div>
					<!-- 프로필 이미지가 없을 경우 -->
					<c:if test="${userselect.uImg == 'N'}">
						<span> 프로필이미지가 없습니다. </span>
					</c:if>
					
					<!-- 프로필 이미지가 있을 경우 -->
					<c:if test="${userselect.uImg == 'Y'}">
						<img class="profileimg" alt="프로필IMG(${userselect.saveName})" src="/upload/users/${userselect.fileName}.${userselect.fileExt}">
					</c:if>
					<br>
				</div>
				<hr>
				<input type="hidden" name="uNo" value="${userselect.uNo}" readonly>
				
				<label>닉네임</label>
				<input type="text" name="uNick" value="${userselect.uNick}" readonly>
				
	    		<label>아이디</label>
				<input type="text" name="uId" value="${userselect.uId}" readonly>
			
				<label>비밀번호</label>
		    	<input type="password" name="uPass" value="${userselect.uPass}" readonly>

				<label>이름</label>
				<input type="text" name="uName" value="${userselect.uName}" readonly>
	    		
	    		<label>E-Mail</label>
				<input type="text" name="uEmail" value="${userselect.uEmail}" readonly>
		    
				<label>연락처</label>
				<input type="text" name="uPhone" value="${userselect.uPhone}" readonly>
		    	
				<label>소개</label>
				<input type="text" name="uDetail" value="${userselect.uDetail}" readonly>
				
				<label>회원가입일자</label>
				<input type="text" name="registDate" value="<fmt:formatDate value="${userselect.registDate}" pattern="yyyy-MM.dd"/>" readonly>
				
				<label>회원수정일자</label>
				<input type="text" name="updateDate" value="<fmt:formatDate value="${userselect.updateDate}" pattern="yyyy-MM.dd"/>" readonly>
				
				<label>권한</label>
				<c:choose>
					<c:when test="${userselect.useAt == 'A'}">
						<input type="text" name="useAt" value="ADMIN" readonly>
					</c:when>
					<c:otherwise>
						<input type="text" name="useAt" value="NOMAL" readonly>
					</c:otherwise>
				</c:choose>
				
				<a href="/AdminUserDelete/${userselect.uNo}" class="btn btn-outline-danger"> <span> UserDelete </span> </a> <a href="AdminUserUpdate/${userselect.uNo}" class="btn btn-outline-warning"> <span>UserUpdate</span> </a>
			</div>
				
		</div>
	</div>
    
    <div class="modal-footer">
		<button type="button" class="btn btn-secondary" id="reset2" data-bs-dismiss="modal">닫기</button>
    </div>
	
</body>

<script>
	// 리다이렉트 방법 2가지
	/* 
	$("#reset1").on("click", function() {
		location = "/AdimnUsersList"
	})
	$("#reset2").on("click", function() {
		location = "/AdimnUsersList"
	}) 
	*/
	
	$("#reset1").on("click", function() {
		location.reload();
	})
	$("#reset2").on("click", function() {
		location.reload();
	})
</script>

</html>