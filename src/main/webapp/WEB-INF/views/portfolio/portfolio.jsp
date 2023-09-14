<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About Me</title>
    <link rel="stylesheet" href="../resources/project/portfolio/style.css">
    <link href="https://fonts.googleapis.com/css?family=Poppins:wght@200,300,400,500,600,700,800,900&display=swap"
        rel="stylesheet">
</head>

<body>
    <div class="navigation">
        <div class="banner">
            <img src="../resources/project/portfolio/banner.jpg" class="cover">
        </div>
        <div class="navLink">
            <ul>
                <li><a href="#"> 자격증 </a></li>
                <li><a href="#"> Skil </a></li>
                <li><a href="#"> Project </a></li>
                <li><a href="#">Portfolio</a></li>
                <li><a href="#">Contact</a></li>
            </ul>
        </div>
    </div>
    <!-- navigation -->

    <section class="sec">
        <header>
            <div class="toggle"><span></span></div>
            <a href="#" class="btn">Hire Me</a>
        </header>
        <div class="imgBx">
            <img src="../resources/project/portfolio/KIM JunSung.jpg" class="cover">
        </div>
        <div class="content">
            <h2>Hi, I am<br><span>JunSung KIM</span></h2>
            <p>1995 06 22 대전광역시 동구 우암로 352-21, amet consectetur adipisicing elit. Eius totam recusandae nobis! Reprehenderit officiis ducimus vel, ex, ea obcaecati iusto eum optio delectus odit aut, provident sint corporis possimus dolores.</p>
            <a href="#" class="btn">Download My CV</a>
        </div>
    </section>
    <!-- sec -->

    <footer>
        <ul class="sci">
            <li><a href="#"><img src="../resources/project/portfolio/face.png"></a></li>
            <li><a href="#"><img src="../resources/project/portfolio/git2.png"></a></li>
            <li><a href="#"><img src="../resources/project/portfolio/instar.png"></a></li>
        </ul>
        <p class="copyrightText">ⓒ2023 @JunnnMo3o </p>
    </footer>
    <!-- footer -->

    <script>
        let menuToggle = document.querySelector(".toggle");
        let navigation = document.querySelector(".navigation");
        let sec = document.querySelector(".sec");
        menuToggle.onclick = function(){
            menuToggle.classList.toggle("active");
            navigation.classList.toggle("active");
            sec.classList.toggle("active");
        }
    </script>
</body>

</html>