<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>있냥?!</title>
    <style>
    </style>
    
</head>

<jsp:include page="../head.jsp"></jsp:include>
<jsp:include page="../nav.jsp"></jsp:include>

<body>
    <section class="header" style="opacity: 0.7;"> 
        <div class="title">
            <h1>주인님의 멋진 모습을 자랑하기</h1>
            <p>집사와 주인님의 추억을 여러 사람들에게 공유해보세요.</p>
            <button><a href="main/Boast" style="color: white;">자랑하기!</a></button>
        </div>
    </section>

    <section class="introyo">
        <div class="cardyo">
            <img src="./resources/project/image/ghnimg/광고로고.png" alt="">
            <h1>광고 문의</h1>
            <p>주소 : 대전광역시 동구 우암로 352 - 21 비전관 729호</p>
            <p>E-Mail : junsung2546@naver.com</p>
            <p>Tell : 010 - 4053 - 2546</p>
        </div>
        <div class="cardyo">
            <img src="./resources/project/image/ghnimg/협찬로고.png" alt="">
            <h1>협찬 문의</h1>
            <p>주소 : 대전광역시 동구 우암로 352 - 21 비전관 729호</p>
            <p>E-Mail : junsung2546@naver.com</p>
            <p>Tell : 010 - 4053 - 2546</p>
        </div>
        <div class="cardyo">
            <img src="./resources/project/image/ghnimg/나눔로고.png" alt="">
            <h1>나눔 문의</h1>
            <p>주소 : 대전광역시 동구 우암로 352 - 21 비전관 729호</p>
            <p>E-Mail : junsung2546@naver.com</p>
            <p>Tell : 010 - 4053 - 2546</p>
        </div>
    </section>

    <jsp:include page="../footer.jsp"></jsp:include>

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
    
    <!-- 네이버 지도API -->
    <!-- <script>
		var mapOptions = {
		    center: new naver.maps.LatLng(36.350765457557735, 127.45304248848758),	//지도의 중심좌표.
		    zoom: 17	//지도의 레벨(확대, 축소 정도)
		};
		
		var map = new naver.maps.Map('map', mapOptions);	//지도 생성 및 객체 리턴
	</script> -->
	
	<!-- 카카오 지도API -->
	<script>
		var container = document.getElementById('map'); //지도를 담을 영역의 DOM 레퍼런스
		var options = { //지도를 생성할 때 필요한 기본 옵션
			center: new kakao.maps.LatLng(36.350765457557735, 127.45304248848758), //지도의 중심좌표.
			level: 3 //지도의 레벨(확대, 축소 정도)
		};
	
		var map = new kakao.maps.Map(container, options); //지도 생성 및 객체 리턴
	</script>
    
</body>
</html>