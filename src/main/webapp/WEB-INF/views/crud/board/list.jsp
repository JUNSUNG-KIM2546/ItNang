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

<title> 있냥?!(자유게시판) </title>
<body>
	
	<div class="container">
		<div>
			<form>
				<div class="row mb-2"> <!-- 그리드 총 크기는 12 -->
					<div class="col-6"></div>	<!-- 빈 div를 만들어 공간처리 -->
					<div class="col-2">
						<select name="search" class="form-select form-select-sm">
							<option value="0" > 검색 항목을 선택하세요 </option>
							<option value="1" ${pager.search == 1 ? "selected" : ""}> 글번호 </option>
							<option value="2" ${pager.search == 2 ? "selected" : ""}> 제목 </option>
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
						<th> 글번호 </th>
						<th> 제목 </th>
						<th> 작성자 </th>
						<th> 작성일 </th>
						<th> 수정일 </th>
						<th> 조회수 </th>
						<th> 관리 </th>
					</tr>
				</thead>
				
				<tbody>
					<c:forEach var="item" items="${boardlist}">           
						<tr>
							<th> ${item.boardId} </th>
							<th> ${item.boardSj} </th>
							<th> ${item.NO} </th>
							<th> <fmt:formatDate value="${item.boardFrst}" pattern="yyyy.MM.dd"/> </th>
							<th> <fmt:formatDate value="${item.boardLast}" pattern="yyyy.MM.dd"/> </th>
							<th> ${item.boardCo} </th>
							<th> <a href="delete/${item.boardId}" class="btn btn-danger btn-sm"> <i class="bi bi-trash"></i> </a> <a href="update/${item.boardId}" class="btn btn-warning btn-sm"> <i class="bi bi-recycle"></i> </a> </th>
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
			
			<a href="../" class="btn btn-secondary btn-sm">이전으로</a>
		</div>
	</div>
	
	<jsp:include page="../../footer.jsp"></jsp:include>

</body>
</html>