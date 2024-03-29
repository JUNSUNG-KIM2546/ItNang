<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html>

	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title> 있냥?!(자유게시판) </title>
</head>
	<!-- 파비콘 -->
	<link rel="shortcut icon" href="../resources/project/image/favicon/favicon.ico">
<body>
	<div class="container">
		<div>
			<h3> 게시물 수정 </h3>
		</div>
		
		<!-- 폼에 액션이 없으면 주소 그대로 보낸다 -->
		<form method="post">
		<div>
			<div>
				<label>작성자:</label>
				<input type="text" name="NO" value="${item.NO}" readonly>
			</div>
			<div>
				<label>카테고리:</label>
				<select name="useAt" >
					<option value="0" > 게시글 카테고리 항목을 선택 </option>
					<option value="B" ${item.useAt == B ? "selected" : ""}> 자유게시판 </option>
					<option value="S" ${item.useAt == S ? "selected" : ""}> 나눔게시판 </option>
					<option value="R" ${item.useAt == R ? "selected" : ""}> 추천게시판 </option>
				</select>
			</div>
			<div>
				<label>제목:</label>
				<input type="text" name="boardSj" value="${item.boardSj}" >
			</div>
			<div>
				<label>내용:</label>
				<input type="text" name="boardCn" value="${item.boardCn}">
			</div>
			<div>
				<label>이미지:</label>
				<input type="file" name="boardImg" value="${item.boardImg}">
			</div>
			<div>
				<button>변경</button>
				<a href="../list"><button type="button">목록</button></a>
			</div>
		</div>
		</form>
	</div>
</body>
</html>