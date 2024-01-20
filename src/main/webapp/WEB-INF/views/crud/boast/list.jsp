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
        <article>
          <header>
            <div class="profile-of-article">
              <img class="img-profile pic" src="/resources/project/image/Logo/cat-4475583_1280.png" alt="dlwlrma님의 프로필 사진">
              <span class="userID main-id point-span">dlwlrma</span>
            </div>
            <img class="icon-react icon-more" src="https://s3.ap-northeast-2.amazonaws.com/cdn.wecode.co.kr/bearu/more.png" alt="more">
          </header>
          <div class="main-image">
            <img src="/resources/project/image/Logo/너두있냥.png" alt="dlwlrma님의 피드 사진" class="mainPic">
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
              <p><span class="point-span userID">dlwlrma</span><span class="at-tag">@wkorea @gucci</span> 🌱</p>
            </div>
            <div class="comment-section">
              <ul class="comments">
                <li>
                  <span><span class="point-span userID">postmalone</span>내가 입으면 더 잘어울릴 것 같아</span>
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
        
       <article>
          <header>
            <div class="profile-of-article">
              <img class="img-profile pic" src="/resources/project/image/Logo/cat-4475583_1280.png" alt="dlwlrma님의 프로필 사진">
              <span class="userID main-id point-span">dlwlrma</span>
            </div>
            <img class="icon-react icon-more" src="https://s3.ap-northeast-2.amazonaws.com/cdn.wecode.co.kr/bearu/more.png" alt="more">
          </header>
          <div class="main-image">
            <img src="/resources/project/image/Logo/너두있냥.png" alt="dlwlrma님의 피드 사진" class="mainPic">
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
              <p><span class="point-span userID">dlwlrma</span><span class="at-tag">@wkorea @gucci</span> 🌱</p>
            </div>
            <div class="comment-section">
              <ul class="comments">
                <li>
                  <span><span class="point-span userID">postmalone</span>내가 입으면 더 잘어울릴 것 같아</span>
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
            <input class="input-comment" type="text" placeholder="댓글 달기..." >
            <button type="submit" class="submit-comment" disabled>게시</button>
          </div>
        </article>
        
        <article>
          <header>
            <div class="profile-of-article">
              <img class="img-profile pic" src="/resources/project/image/Logo/cat-4475583_1280.png" alt="dlwlrma님의 프로필 사진">
              <span class="userID main-id point-span">dlwlrma</span>
            </div>
            <img class="icon-react icon-more" src="https://s3.ap-northeast-2.amazonaws.com/cdn.wecode.co.kr/bearu/more.png" alt="more">
          </header>
          <div class="main-image">
            <img src="/resources/project/image/Logo/너두있냥.png" alt="dlwlrma님의 피드 사진" class="mainPic">
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
              <p><span class="point-span userID">dlwlrma</span><span class="at-tag">@wkorea @gucci</span> 🌱</p>
            </div>
            <div class="comment-section">
              <ul class="comments">
                <li>
                  <span><span class="point-span userID">postmalone</span>내가 입으면 더 잘어울릴 것 같아</span>
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
            <input class="input-comment" type="text" placeholder="댓글 달기..." >
            <button type="submit" class="submit-comment" disabled>게시</button>
          </div>
        </article>
        
        <article>
          <header>
            <div class="profile-of-article">
              <img class="img-profile pic" src="/resources/project/image/Logo/cat-4475583_1280.png" alt="dlwlrma님의 프로필 사진">
              <span class="userID main-id point-span">dlwlrma</span>
            </div>
            <img class="icon-react icon-more" src="https://s3.ap-northeast-2.amazonaws.com/cdn.wecode.co.kr/bearu/more.png" alt="more">
          </header>
          <div class="main-image">
            <img src="/resources/project/image/Logo/너두있냥.png" alt="dlwlrma님의 피드 사진" class="mainPic">
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
              <p><span class="point-span userID">dlwlrma</span><span class="at-tag">@wkorea @gucci</span> 🌱</p>
            </div>
            <div class="comment-section">
              <ul class="comments">
                <li>
                  <span><span class="point-span userID">postmalone</span>내가 입으면 더 잘어울릴 것 같아</span>
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
            <input class="input-comment" type="text" placeholder="댓글 달기..." >
            <button type="submit" class="submit-comment" disabled>게시</button>
          </div>
        </article>
        
        <article>
          <header>
            <div class="profile-of-article">
              <img class="img-profile pic" src="/resources/project/image/Logo/cat-4475583_1280.png" alt="dlwlrma님의 프로필 사진">
              <span class="userID main-id point-span">dlwlrma</span>
            </div>
            <img class="icon-react icon-more" src="https://s3.ap-northeast-2.amazonaws.com/cdn.wecode.co.kr/bearu/more.png" alt="more">
          </header>
          <div class="main-image">
            <img src="/resources/project/image/Logo/너두있냥.png" alt="dlwlrma님의 피드 사진" class="mainPic">
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
              <p><span class="point-span userID">dlwlrma</span><span class="at-tag">@wkorea @gucci</span> 🌱</p>
            </div>
            <div class="comment-section">
              <ul class="comments">
                <li>
                  <span><span class="point-span userID">postmalone</span>내가 입으면 더 잘어울릴 것 같아</span>
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
            <input class="input-comment" type="text" placeholder="댓글 달기..." >
            <button type="submit" class="submit-comment" disabled>게시</button>
          </div>
        </article>
        
		<!-- 여기에 다음 게시물 추가 -->
      </div>
      
      <!-- main-right -->
      <div class="main-right">
      
      	<!-- 로그인 한 프로필 -->
      	<c:if test="${loginVO != null}">
	        <div class="myProfile">
	          <img class="pic" src="/resources/project/image/Logo/cat-4475583_1280.png" alt="thisisyourhyung님의 프로필 사진">
	          <div>
	            <span class="userID point-span">${loginVO.uNick}</span>
	            <span class="sub-span">${loginVO.uDetail}</span>  
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
            <li>
              <div class="gradient-wrap">
                <img class="img-profile story" src="/resources/project/image/Logo/cat-4475583_1280.png" alt="wecode_bootcamp님의 프로필 사진">
              </div>
              <div class="profile-text">
                <span class="userID point-span">wecode_bootcamp</span>
                <span class="sub-span">12분 전</span>  
              </div>
            </li>
            <li>
              <div class="gradient-wrap">
                <img class="img-profile story" src="/resources/project/image/Logo/cat-4475583_1280.png" alt="han_ye_seul님의 프로필 사진">
              </div>
              <div class="profile-text">
                <span class="userID point-span">han_ye_seul</span>
                <span class="sub-span">28분 전</span>  
              </div>
            </li>
            <li>
              <div class="gradient-wrap">
                <img class="img-profile story" src="/resources/project/image/Logo/cat-4475583_1280.png" alt="dntlrdl님의 프로필 사진">
              </div>
              <div class="profile-text">
                <span class="userID point-span">dntlrdl</span>
                <span class="sub-span">40분 전</span>  
              </div>
            </li>
            <li>
              <div class="gradient-wrap">
                <img class="img-profile story" src="https://scontent-gmp1-1.cdninstagram.com/v/t51.2885-19/s320x320/104003354_716384015830603_8920819290329712932_n.jpg?_nc_ht=scontent-gmp1-1.cdninstagram.com&_nc_ohc=98qm88VYcqoAX_OFQ6W&oh=0000cab3adec26de3231e7dcfd4022b2&oe=5F6BC859" alt="i_icaruswalks님의 프로필 사진">
              </div>
              <div class="profile-text">
                <span class="userID point-span">i_icaruswalks</span>
                <span class="sub-span">56분 전</span>  
              </div>
            </li>
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

</body>
</html>