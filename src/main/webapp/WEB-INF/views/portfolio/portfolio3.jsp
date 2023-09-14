<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title> About Me </title>
        <link href="https://fonts.googleapis.com/css?family=Jua:400" rel="stylesheet">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Gamja+Flower&family=Jua&family=Sunflower:wght@300;500&display=swap" rel="stylesheet">
        <!-- https://fonts.google.com/specimen/Sunflower?subset=korean&noto.script=Kore -->
    <style>
    	.kim {
    		color: #2196F3;
    	}
         /* 전체 페이지의 배경 이미지 설정 */
        body {
            background-image: url('./resources/project/portfolio/back.jpg'); /* 이미지 파일의 경로를 설정하세요 */
            background-size: cover; /* 이미지를 화면에 꽉 차도록 조절 */
            background-repeat: no-repeat; /* 이미지 반복 없음 */
            background-attachment: fixed; /* 스크롤에 따른 이미지 고정 */
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f0f0f0;
        }

        header {
            color: #BBDEFB;
            text-align: center;
            font-family: 'Gamja Flower', cursive;
         
        }
        
        header h1 {
        font-size: 65px;
        }

        h1 {
            font-size: 36px;
        }

        .container {
            max-width: 1500px;
            margin: 20px auto;
            padding: 100px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        h2 {
            font-size: 24px;
            font-family: 'Jua', sans-serif;
            color: #2196F3;
        }

      

        footer {
            background-color: #333;
            color: #fff;
            text-align: center;
            padding: 10px 0;
        }

        footer p {
            font-size: 14px;
        }

        /* 프로필 칸 스타일 설정 */
        .profile {
            display: flex;
            align-items: center;
            padding: 20px;
            
        }

        /* 프로필 사진 스타일 설정 */
        .profile img {
            width: 200px; /* 원하는 이미지 크기 설정 */
            height: 240px;
            border-radius: 80%; /* 원 모양으로 이미지 모서리 설정 */
            margin-right: 40px; /* 이미지와 텍스트 사이 간격 조절 */
        }
        .ol {
        float: left;
        padding-right: 50px;
        }
        .ol li{
        list-style: none;
        }
        
        .gl {
        clear: both;
        }

    </style>
</head>
<header>
	<div>
		<h1>Port Folio</h1>
	</div>
</header>
<body>

    <div class="container">
        <!-- 프로필 칸 -->
        <div class="profile">
            <img src="./resources/project/portfolio/KIM JunSung.jpg" alt="프로필 사진"> <!-- 프로필 사진 이미지 경로 설정 -->
            <h1 class="kim"> 김준성 / Jun Sung KIM </h1> <!-- 이름 또는 프로필 정보 추가 -->
            <br>
            <p>1995.06.22</p>
        </div>
		
		<div>
	        <h2>프로필</h2>
	        <p>안녕하세요! 저는 신입 웹 개발자로서 다양한 웹 프로젝트를 참여하고 싶은 개발자입니다. 웹 개발 분야에서 다양한 기술과 언어를 습득하고 적용하며 개발 역량을 향상시켜 왔습니다.</p>
		</div>
		
        <div>
	        <h2>자격증</h2>
	        <ul class=gl">
	            <li>
	                <strong> 정보처리산업기사 </strong>
	            </li>
	            <li>
	                <strong> 생산자동화기능사 </strong>
	            </li>
	            <li>
	                <strong> 전기기능사 </strong>
	            </li>
	        </ul>
        </div>
        
        <div>
	        <h2>사용</h2>
	        <ul class="ol">
	            <li>
	                <strong> Java </strong>
	            </li>
	            <li>
	                <strong> HTML5 </strong>
	            </li>
	            <li>
	                <strong> CSS </strong>
	            </li>
	            <li>
	                <strong> JavaScript </strong>
	            </li>
	        </ul>
	        <ul class="ol">
	            <li>
	                <strong> IntelliJ IDEA </strong>
	            </li>
	            <li>
	                <strong> Eclipse </strong>
	            </li>
	            <li>
	                <strong> Spring </strong>
	            </li>
	            <li>
	                <strong> 전자정부프레임워크 </strong>
	            </li>
	        </ul>
	        <ul class="ol">
	            <li>
	                <strong> AWS(EC2) </strong>
	            </li>
	            <li>
	                <strong> Linux </strong>
	            </li>
	            <li>
	                <strong> OracleDB </strong>
	            </li>
	            <li>
	                <strong> MariaDB </strong>
	            </li>
	        </ul>
        </div>
        
		<div class="gl">
	        <h2>프로젝트</h2>
	        <p>참여한 프로젝트 입니다.</p>
	        <ul>
	            <li>
	                <strong>개인 프로젝트 :</strong> 개인 웹사이트 구축
	                <p>개인 웹 서비스 설명</p>
	            </li>
	            <li>
	                <strong>팀 프로젝트 :</strong> 부동산 정보 관리 시스템 구축
	                <p>팀 프로젝트 설명</p>
	            </li>
	        </ul>
        </div>
    </div>

    <footer>
        <p>&copy; Port Folio To . @JunnnMo3o</p>
    </footer>
</body>
</html>