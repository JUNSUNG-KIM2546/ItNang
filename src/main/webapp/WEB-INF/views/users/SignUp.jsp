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
       		<input type="text"  placeholder="ID" name="id">
       		<button type="button" id="checkd_id">중복확인</button>
       	</div>
           <input type="password" name="pass" placeholder="Password">
           <!-- <input type="password" name="passC" placeholder="Password 확인"> -->
           <input type="text" name="name" placeholder="성명">
           <input type="text" name="email" placeholder="이메일주소">
           <input type="text" name="phone" placeholder="전화번호">
           
           <input type="submit" value="가입" >
       </form>
 		</div>
    </div>
    
    <div class="modal-footer">
      <button type="button" class="btn btn-secondary" id="reset2" data-bs-dismiss="modal">닫기</button>
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
</script>
</html>