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
	<link rel="shortcut icon" href="./resources/project/image/favicon/favicon.ico">
	<link rel="stylesheet" href="./resources/project/css/Login.css">
<body>
    
    <div class="login-wrapper">
        <img src="./resources/project/image/Logo/여기있냥.png" alt="">
        <h2><span style="text-shadow:2px 2px 2px #000;">Login</span></h2>
        <!-- 폼에 액션이 없으면 주소 그대로 보낸다 -->
        <form id="login-form" method="post">
            <input type="text" name="id" placeholder="ID">
            <input type="password" name="pass" placeholder="Password">
            <label for="remember-check">
                <input type="checkbox" id="remember-check">아이디 저장
            </label>
            <input type="submit" value="Login">
        </form>
        <a href="/ac/SingUps" onclick="window.open(this.href, '_blank', 'width=450, height=700'); return false;"><button onclick=" window.close();">Singup</button></a>
    </div>

</body>
</html>