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
<title> 있냥?!(유저관리) </title>
</head>
	<link rel="shortcut icon" href="../resources/project/image/favicon/favicon.ico">
<body>
	
	<div class="container">
		<div>
			<h3><a href="?page=1"> 유저관리 </a></h3>
		</div>
		
		<div>
			<form>
				<div class="row mb-2"> <!-- 그리드 총 크기는 12 -->
					<div class="col-6"></div>	<!-- 빈 div를 만들어 공간처리 -->
					<div class="col-2">
						<select name="search" class="form-select form-select-sm">
							<option value="0" > 검색 항목을 선택하세요 </option>
							<option value="1" ${pager.search == 1 ? "selected" : ""}> 아이디 </option>
							<option value="2" ${pager.search == 2 ? "selected" : ""}> 닉네임 </option>
							<option value="3" ${pager.search == 3 ? "selected" : ""}> 이름 </option>
							<option value="4" ${pager.search == 4 ? "selected" : ""}> 이메일 </option>
							<option value="5" ${pager.search == 5 ? "selected" : ""}> 연락처 </option>
						</select>
					</div>					
					<div class="col">
						<input type="text" name="keyword" class="form-control form-control-sm" value="${pager.keyword}">
					</div>					
					<div class="col-1 d-grid">
						<button class="btn btn-sm btn-primary"> 검색 </button>
					</div>
				</div>
			</form>
		</div>
		
		<div>
			<table class="table table-striped table-hover" border="1">
			
				<thead class="table-dark">
					<tr>
						<th> No. </th>
						<th> ID </th>
						<th> Nick </th>
						<th> PW </th>
						<th> 이름 </th>
						<th> E-Mail </th>
						<th> Tell </th>
						<th> 가입일자 </th>
						<th> 수정일자 </th>
						<th> 권한여부 </th>
						<th> 관리 </th>
					</tr>
				</thead>
				
				<tbody>
					<c:forEach var="item" items="${userslist}">
						<tr>
							<th> ${item.uNo} </th>
							<th> ${item.uId} </th>
							<th> ${item.uNick} </th>
							<th> ${item.uPass} </th>
							<th> ${item.uName} </th>
							<th> ${item.uEmail} </th>
							<th> ${item.uPhone} </th>
							<th> <fmt:formatDate value="${item.registDate}" pattern="yyyy.MM.dd"/> </th>
							<th> <fmt:formatDate value="${item.updateDate}" pattern="yyyy.MM.dd"/> </th>
							<th> ${item.useAt} </th>
							<th> <a href="UserDelete/${item.uNo}" class="btn btn-danger btn-sm"> <i class="bi bi-trash"></i> </a> <a href="UserUpdate/${item.uNo}" class="btn btn-warning btn-sm"> <i class="bi bi-recycle"></i> </a> </th>
						</tr>
					</c:forEach>
				</tbody>
				
				<tfoot>
					<tr>
						<td colspan="5">
							<ul class="pagination justify-content-center">
								<li class="page-item"><a class="page-link" href="?page=${pager.first}"> | </a></li>
								<li class="page-item"><a class="page-link" href="?page=${pager.back2}"> << </a></li>
								<li class="page-item"><a class="page-link" href="?page=${pager.back}"> < </a></li>
								<c:forEach var="page" items="${pager.list}">
									<li class="page-item"><a class="page-link ${page == pager.page ? 'active' : ''}" href="?page=${page}">${page}</a></li>
								</c:forEach>
								<li class="page-item"><a class="page-link" href="?page=${pager.next}"> > </a></li>
								<li class="page-item"><a class="page-link" href="?page=${pager.next2}"> >> </a></li>
								<li class="page-item"><a class="page-link" href="?page=${pager.last}"> | </a></li>
							</ul>
						</td>
					</tr>
				</tfoot>
					
			</table>
		</div>
		<div class="mb-5">
			<a href="add" class="btn btn-primary btn-sm"> <i class="bi bi-file-earmark-plus"></i> </a>
		
			<!-- <a href="dummy" class="btn btn-warning btn-sm"> 대량 등록 </a>
		
			<a href="init" class="btn btn-danger btn-sm"> 초기화 </a> -->
			
			<a href="/" class="btn btn-secondary btn-sm">이전으로</a>
		</div>
	</div>

</body>
</html>