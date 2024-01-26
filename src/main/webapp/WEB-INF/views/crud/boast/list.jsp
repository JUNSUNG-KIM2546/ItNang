<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

</head>

<jsp:include page="../../head.jsp"></jsp:include>

<jsp:include page="../../nav.jsp"></jsp:include>

<title> 있냥?!(자랑하기) </title>


<body>
	
    <!-- main -->
    <main>
      <div class="feeds">
      
        <!-- article -->
        <c:forEach items="${boastList }" var="boastList">
        	<article>
	          <header>
	            <div class="profile-of-article">
	              <img class="img-profile pic" src="/upload/users/${boastList.fileName}.${boastList.fileExt}" alt="dlwlrma님의 프로필 사진">
	              <span class="userID main-id point-span">${boastList.uNick }</span>
	            </div>
	            <img class="icon-react icon-more" src="https://s3.ap-northeast-2.amazonaws.com/cdn.wecode.co.kr/bearu/more.png" alt="more">
	          </header>
	          <div class="main-image">
	            <img src="/upload/boast/${boastList.boastFileName}.${boastList.boastFileExt}" alt="${boastList.uNick }님의 피드 사진" class="mainPic">
	          </div>
	          <div class="icons-react">
	            <div class="icons-left">
	              <img class="icon-react" src="https://s3.ap-northeast-2.amazonaws.com/cdn.wecode.co.kr/bearu/heart.png" alt="하트">
	              <img class="icon-react" src="https://s3.ap-northeast-2.amazonaws.com/cdn.wecode.co.kr/bearu/comment.png" alt="말풍선">
	              <img class="icon-react" src="/resources/project/image/Logo/dm2.png" alt="DM">  
	            </div>
	            <img class="icon-react" src="https://s3.ap-northeast-2.amazonaws.com/cdn.wecode.co.kr/bearu/bookmark.png" alt="북마크">
	          </div>
	          <!-- article text data -->
	          <div class="reaction">
	            <div class="liked-people">
	              <p><span class="point-span">2,412,751명</span>이 좋아합니다</p>
	            </div>
	            <div class="description">
	              <p><span class="point-span userID">${boastList.uNick }</span><span class="at-tag">${boastList.boastCn }</span> 🌱</p>
	            </div>
	            <div class="comment-section">
	              <ul class="comments">
	                <li>
	                  <span><span class="point-span userID">postmalone</span>댓글기능 곧 구현</span>
	                  <img class="comment-heart" src="https://s3.ap-northeast-2.amazonaws.com/cdn.wecode.co.kr/bearu/heart.png" alt="하트">
	                </li>
	                <!-- input 값 여기에 추가 -->
	              </ul>
	              <div class="time-log">
	                <span>32분 전</span>
	              </div>
	            </div>
	          </div>
	          <div class="hl"></div>
	          <div class="comment">
	            <input id="input-comment" class="input-comment" type="text" placeholder="댓글 달기..." >
	            <button type="submit" class="submit-comment" disabled>게시</button>
	          </div>
	        </article>
        </c:forEach>
        
		<!-- 여기에 다음 게시물 추가 -->
      </div>
      
      <!-- main-right -->
      <div class="main-right">
      
      	<!-- 로그인 한 프로필 -->
      	<c:if test="${loginVO != null}">
	        <div class="myProfile">
	          	<!-- 프로필 이미지가 없을 경우 -->
				<c:if test="${loginVO.uImg == 'N'}">
					<img class="pic"  alt="${loginVO.uNick}님의 프로필 사진" src="/resources/project/image/Logo/cat-4475583_1280.png">
				</c:if>
				
				<!-- 프로필 이미지가 있을 경우 -->
				<c:if test="${loginVO.uImg == 'Y'}">
					<img class="pic"  alt="${loginVO.uNick}님의 프로필 사진" src="/upload/users/${loginVO.fileName}.${loginVO.fileExt}">
				</c:if>
	          <div>
	            <span class="userID point-span">${loginVO.uNick}</span>
	            <span class="sub-span">${loginVO.uDetail}</span>
	          </div>
	          <div>
	          	<button type="button" class="btn btn-outline-info" id="Boasts" data-bs-toggle="modal" data-bs-target="#BoastModal"> New Boast </button>
	          </div>
	        </div>
        </c:if>
        
        <!-- story section -->
        <div class="section-story">
          <div class="menu-title">
            <span class="sub-title">스토리</span>
            <span class="find-more"><a href="#">모두 보기</a></span>
          </div>
          <ul class="story-list">
          
          	<c:forEach items="${usersList}" var="story" begin="0" end="2" >
          		<c:if test="${story.useAt != 'A' }">
		            <li>
		              <div class="gradient-wrap">
		              	<!-- 프로필 이미지가 없을 경우 -->
		              	<c:if test="${story.uImg == 'N' }">
			                <img class="img-profile story" src="/resources/project/image/Logo/cat-4475583_1280.png" alt="${story.uNick}님의 프로필 사진">
		              	</c:if>
		              	<!-- 프로필 이미지가 있을 경우 -->
		              	<c:if test="${story.uImg == 'Y' }">
			                <img class="img-profile story" src="/upload/users/${story.fileName}.${story.fileExt}" alt="${story.uNick}님의 프로필 사진">
		              	</c:if>
		              </div>
		              <div class="profile-text">
		                <span class="userID point-span">${story.uNick}</span>
		                <span class="sub-span"> ${story.uDetail } </span>  
		              </div>
		            </li>
          		</c:if>
            </c:forEach>
            
          </ul>
        </div>
        <!-- recommendation section -->
        <div class="section-recommend">
          <div class="menu-title">
            <span class="sub-title">인기 많은 회원</span>
            <span class="find-more"><a href="#">모두 보기</a></span>
          </div>
          <ul class="recommend-list">
            <li>
              <div class="recommend-friend-profile">
                <img class="img-profile" src="/resources/project/image/Logo/cat-4475583_1280.png" alt="renebaebae님의 프로필 사진">
                <div class="profile-text">
                  <span class="userID point-span">renebaebae</span>
                  <span class="sub-span">소개</span>
                </div>
              </div>
              <span class="btn-follow"><a href="#">보기</a></span>
            </li>
            
            <li>
              <div class="recommend-friend-profile">
                <img class="img-profile" src="/resources/project/image/Logo/cat-4475583_1280.png" alt="_jeongjaehyun님의 프로필 사진">
                <div class="profile-text">
                  <span class="userID point-span">_jeongjaehyun</span>
                  <span class="sub-span">소개</span>
                </div>
              </div>
              <span class="btn-follow"><a href="#">보기</a></span>
            </li>
            
            <li>
              <div class="recommend-friend-profile">
                <img class="img-profile" src="/resources/project/image/Logo/cat-4475583_1280.png" alt="leehi_hi님의 프로필 사진">
                <div class="profile-text">
                  <span class="userID point-span">leehi_hi</span>
                  <span class="sub-span">소개</span>
                </div>
              </div>
              <span class="btn-follow"><a href="#">보기</a></span>
            </li>
          </ul>
        </div>
        
        <footer>
          <p class="insta-sccript">
            소개 ∙ 도움말 ∙ 홍보 센터 ∙ API ∙ 채용 정보 ∙ 개인정보처리방침 ∙ <br>약관 ∙ 위치 ∙ 인기계정 ∙ 해시태그 ∙ 언어
            <br><br>
            © 2020 INSTAGRAM FROM FACEBOOK
          </p>
        </footer>
      </div>
    </main>
    
    <script>
	    const commentInput = document.getElementById('input-comment');
	    const commentBtn = document.getElementsByClassName('submit-comment')[0];
	    const commentList = document.getElementsByClassName('comments')[0];
	
	    commentInput.addEventListener('keypress', function(e){
	        if (commentInput.value) {
	            if (e.which === 13) {
	                var newComment = document.createElement('li')
	                newComment.innerHTML = `<span><span class="point-span userID">thisisyourhyung</span>` + this.value + `</span><img class="comment-heart" src="https://s3.ap-northeast-2.amazonaws.com/cdn.wecode.co.kr/bearu/heart.png" alt="하트">`;
	                commentList.appendChild(newComment);
	                this.value = "";
	            }
	        }
	    })
	
	    commentBtn.addEventListener('click', function(){
	        if (commentInput.value) {
	            var newComment = document.createElement('li')
	            newComment.innerHTML = `<span><span class="point-span userID">thisisyourhyung</span>` + commentInput.value + `</span><img class="comment-heart" src="https://s3.ap-northeast-2.amazonaws.com/cdn.wecode.co.kr/bearu/heart.png" alt="하트">`;
	            commentList.appendChild(newComment);
	            commentInput.value = "";
	        }
	    })
	
	    commentInput.addEventListener('keyup', function(event) {
	        if (commentInput.value) {
	            commentBtn.disabled = false;
	        }
	        else {
	            commentBtn.disabled = true;
	        }
	    })
    </script>
    
   	<div id="modalDiv">
		<!-- 로그인 모달창 -->
		<div class="modal fade" id="BoastModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
		  <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable">
		    <div class="modal-content" id="boast">
		    
		    </div>
		  </div>
		</div>
	</div>
    <script>
	    $('#Boasts').on( "click", function() {
			if (${loginVO.uNo != null}) {
				var user = `${loginVO.uNo}`;	
			}
			else {
				var user = null;
			}
			//$('#LoginsModal').reload();
			$('#boast').load("/boast/" + user +"/add");
			//$('#userUpadte').modal();
			console.log("자랑게시판 등록 모달")
			console.log(user)
	    });
    </script>

</body>
</html>