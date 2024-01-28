<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>있냥?! 회원가입</title>
    <style>
    </style>
</head>

<jsp:include page="../head.jsp"></jsp:include>

<body>

	<!-- Modal -->
    <div class="modal-header">
      <h1 class="modal-title fs-5" id="exampleModalLabel">있냥?! 회원가입</h1>
      <button type="button" class="btn-close" id="reset1" data-bs-dismiss="modal" aria-label="Close"></button>
    </div>
    
    <div class="modal-body">
    	<div class="login-wrapper">
	       <img src="../resources/project/image/Logo/너두있냥.png" alt="">
	       <h2><span style="text-shadow:2px 2px 2px #000;">SignUp</span></h2>
	       
			<!-- 폼에 액션이 없으면 주소 그대로 보낸다 -->
			<form id="login-form" method="post" action="/SingUps">
				<div class="idc">
					<input type="text"  placeholder="ID" name="uId">
					<button type="button" id="checkd_id">중복확인</button>
				</div>
				<input type="text" name="uNick" placeholder="닉네임">
			    <input type="password" name="uPass" placeholder="Password">
			    <!-- <input type="password" name="passC" placeholder="Password 확인"> -->
			    <input type="text" name="uName" placeholder="성명">
			    <input type="text" name="uEmail" placeholder="이메일주소">
			    <input type="text" name="uPhone" placeholder="전화번호">
			    
			    <input type="submit" value="가입" >
			</form>
			
			<!-- 
			<form action="/SingUps" id="login-form" method="post" enctype="multipart/form-data">	
				<div>
					<label>Profile IMG</label>
					<img alt="프로필IMG" src="upload/${item.userUploadName}">
					<input type="file" name="userUploadName" value="${item.userUploadName}">
				</div>
				<hr>
				<label>닉네임</label>
				<input type="text" name="uNick" placeholder="닉네임">
			
				<label>아이디</label>
				<input type="text" name="uId" placeholder="ID">
			
				<label>비밀번호</label>
		    	<input type="password" name="uPass" placeholder="Password">
	
				<label>이름</label>
				<input type="text" name="uName" placeholder="Name">
				
	    		<label>E-Mail</label>
				<input type="text" name="uEmail" placeholder="E-Mail">
		    
				<label>연락처</label>
				<input type="text" name="uPhone" placeholder="Phone">
	    	
				<label>소개</label>
				<input type="text" name="uDetail" placeholder="Detail">
			    <input type="submit" value="Update" >
			</form>
	        -->
	        
 		</div>
    </div>
    
    <div class="modal-footer">
      <button type="button" class="btn btn-secondary" id="reset2" data-bs-dismiss="modal">닫기</button>
    </div>

</body>

<script>
	$("#reset1").on("click", function() {
		location.reload();
	})
	$("#reset2").on("click", function() {
		location.reload();
	})
</script>
</html>