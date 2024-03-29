<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자유게시판 등록</title>
</head>
<body>
	<div>
		<div>
			<h3>등록</h3>
		</div>
		
		<!-- 폼에 액션이 없으면 주소 그대로 보낸다 -->
		<form method="post">
		<div>
			<div>
				<label>작성자:</label> <span>${loginVO.uNick}</span>
				<input type="hidden" name="uNo" value="${loginVO.uNo}" readonly>
			</div>
			
			<div>
				<label>카테고리:</label>
				<select name="useAt">
					<option value="0" > 게시글 카테고리 항목을 선택 </option>
					<option value="B"> 자유게시판 </option>
					<option value="S"> 나눔게시판 </option>
					<option value="R"> 추천게시판 </option>
				</select>
			</div>
			
			<div>
				<label>제목:</label>
				<input type="text" name="boardSj">
			</div>
			<div>
				<label>내용:</label>
				<input type="text" name="boardCn">
			</div>
			<div>
				<label>이미지:</label>
				<input type="file" name="boardImg">
			</div>
			
			<div>
				<button>등록</button>
				<a href="list"><button type="button">목록</button></a>
			</div>
		</div>
		</form>
	</div>
</body>
</html>