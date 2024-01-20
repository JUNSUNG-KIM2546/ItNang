<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	
	</head>
	
	<!-- jQuery -->
	<script src="https://code.jquery.com/jquery-3.7.1.js" integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4=" crossorigin="anonymous"></script>
	   
	<!-- 카카오 지도API -->
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=a2934dc1e36b528c374fc8c1f2fa06ca"></script>
	
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
	<link rel="shortcut icon" href="../resources/project/image/favicon/favicon.ico">
	<link rel="stylesheet" href="../resources/project/css/nav.css">
	
	<footer id="foo" style="color: white; background: black; padding-top: 50px; padding-bottom: 50px;">
        <div class="container">
            <div class="left">
            	<a href="homes"><img src="../resources/project/image/Logo/logo_text(W).png" alt=""></a>
                <h1> 있냥?!</h1>
                <p><a href="https://www.kopo.ac.kr/daejeon/content.do?menu=8074" target="_blank">https://www.kopo.ac.kr/daejeon/content.do?menu=8074</a></p>
                <div class="sns">
                    <a href="https://www.instagram.com/junnnmo3o/"  target="_blank"><img src="../resources/project/image/snsimg/인스타그램로고.png" alt=""></a>
                    <a href="https://ko-kr.facebook.com/"  target="_blank"><img src="../resources/project/image/snsimg/페이스북로고.png" alt=""></a>
                    <a href="https://github.com/JUNSUNG-KIM2546/WebServlet"  target="_blank"><img src="../resources/project/image/snsimg/깃허브1.png" alt=""></a>
                </div>
            </div>
            <div class="right">
                <div class="list">
                    <h2> About Me </h2>
                    <ul>
                        <li> Name : <a href="portfolio" onclick="window.open(this.href, '_blank'); return false;">김준성</a></li>
                        <li> Tell : 010 - 4053 - 2546</li>
                        <li> E-Mail : junsung2546@naver.com</li>
                        <li> Adress 1 : <a href="https://map.naver.com/v5/search/%EA%B2%BD%EC%83%81%EB%82%A8%EB%8F%84%20%EA%B1%B0%EC%A0%9C%EC%8B%9C%20%EC%98%A5%ED%8F%AC%EB%A1%9C%20269/address/14325465.287628096,4150032.298874896,%EA%B2%BD%EC%83%81%EB%82%A8%EB%8F%84%20%EA%B1%B0%EC%A0%9C%EC%8B%9C%20%EC%98%A5%ED%8F%AC%EB%A1%9C%20269,new?c=18,0,0,0,dh&isCorrectAnswer=true"  target="_blank">경남 거제시 옥포로 269</a></li>
                        <li> Adress 2 : <a href="https://map.naver.com/v5/search/%EB%8C%80%EC%A0%84%EA%B4%91%EC%97%AD%EC%8B%9C%20%EB%8F%99%EA%B5%AC%20%EC%9A%B0%EC%95%94%EB%A1%9C%20352%20-%2021%20%EB%B9%84%EC%A0%84%EA%B4%80%20729%ED%98%B8/address/14188138.034957651,4349013.696361627,%EB%8C%80%EC%A0%84%EA%B4%91%EC%97%AD%EC%8B%9C%20%EB%8F%99%EA%B5%AC%20%EC%9A%B0%EC%95%94%EB%A1%9C%20352-21,new?c=17,0,0,0,dh&isCorrectAnswer=true"  target="_blank">대전광역시 동구 우암로 352 - 21 비전관 729호</a></li>
                    </ul>
                </div>
                <div class="list">
                	<h2>찾아오는 길</h2>
                	<br/>
                	<div id="map" style="width:320px;height:240px;"></div>
                </div>
                <!-- <div class="list">
                    <h2>ABOUT</h2>
                    <ul>
                        <li>about #1</li>
                        <li>about #2</li>
                        <li>about #3</li>
                        <li>about #4</li>
                    </ul>
                </div> -->
            </div>
        </div>
        <br/>
        <div class="copy_right">
            <p> @JunnnMo3o 개인 프로젝트 </p>
        </div>
    </footer>
</html>