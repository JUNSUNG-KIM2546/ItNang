<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title> 있냥?! Boast Add </title>
</head>

	<jsp:include page="../../head.jsp"></jsp:include>
	
<body>

	<!-- Modal -->
	<div class="modal-header">
		<h1 class="modal-title fs-5" id="exampleModalLabel">Boast Add</h1>
		<button type="button" class="btn-close" id="reset1" data-bs-dismiss="modal" aria-label="Close"></button>
	</div>
	
	<div class="modal-body">
		<div class="login-wrapper">
			<img src="../resources/project/image/Logo/너두있냥.png" alt="">
			<h2><span style="text-shadow:2px 2px 2px #000;">Boast Add</span></h2>
	
			<!-- 폼에 액션이 없으면 주소 그대로 보낸다 -->
			<form action="/boast/${loginVO.uNo}/add" id="login-form" method="post" enctype="multipart/form-data">
				<input type="hidden" name="uNo" value="${loginVO.uNo}">
				<div>
					<img class="profileimg" id="preview" alt="자랑게시물IMG" src="">
					<input type="file" name="boastUploadName" onchange="">
					<input type="hidden" name="boastImg" value=""> <!-- boastUploadName에 값이 있으면 Y, 없으면 N -->
				</div>
				<hr>
				<c:if test="${loginVO.useAt == 'A' }">
					<label>공지여부</label>
					<input type="radio" name="boastAt" value="Y"><span> 공지사항 </span>
					<input type="radio" name="boastAt" value="N"><span> 일반 </span>
				</c:if>
				<c:if test="${loginVO.useAt == 'N' }">
					<input type="hidden" name="boastAt" value="N">
				</c:if>
				
				<label hidden="">제목</label>
				<input type="hidden" name="boastSj" value="${loginVO.uNo}-${loginVO.uNick}-Boast게시물">
			
				<!-- <label>내용</label> -->
				<textarea class="textArea" name="boastCn" placeholder="내용"></textarea>
			
			    <input type="submit" value="BoastAdd" >
			</form>
		</div>
	</div>
    
    <div class="modal-footer">
		<button type="button" class="btn btn-secondary" id="reset2" data-bs-dismiss="modal">닫기</button>
    </div>
	
</body>
</html>