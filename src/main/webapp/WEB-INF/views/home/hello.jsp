<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>있냥?!</title>
    <!-- https://fonts.google.com/?subset=korean&noto.script=Kore  폰트 스타일 -->
    <style>
        
    </style>
</head>
	
	<link rel="shortcut icon" href="./resources/project/image/favicon/favicon.ico">
	<link rel="stylesheet" href="./resources/project/css/nav.css">
	
<body>

    <section class="header" style="opacity: 0.7;"> 
        <div class="title">
            <h1>있냥?!에 오신걸 환영합니다.</h1>
            <p>집사와 주인님의 추억을 여러 사람들에게 공유해보세요.</p>
            <button onclick=" window.close();" ><a href="main/Boast" style="color: white; ">창닫기!</a></button>
        </div>
    </section>

        <div class="copy_right">
            <p>한국폴리텍대학(대전캠퍼스) 스마트 소프트웨어 하이테크과정 1학기 프로젝트</p>
        </div>

    <script>
        // 슬라이드쇼용 JavaScript 코드
        var images = ['./resources/project/image/nang/s1.jpg', './resources/project/image/nang/s2.jpg', './resources/project/image/nang/s3.jpg', './resources/project/image/nang/s4.jpg', './resources/project/image/nang/s5.jpg', './resources/project/image/nang/s6.jpg', './resources/project/image/nang/s7.png'];
        var currentIndex = 0;
        var header = document.querySelector('.header');

        function changeBackground() {
            header.style.backgroundImage = 'url("' + images[currentIndex] + '")';
            currentIndex = (currentIndex + 1) % images.length;
        }

        // 3초마다 배경 변경
        changeBackground(); // 초기 이미지 설정
        setInterval(changeBackground, 3000);
    </script>
       
</body>
</html>