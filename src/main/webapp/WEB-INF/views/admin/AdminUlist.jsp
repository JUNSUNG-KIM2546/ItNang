<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html dir="ltr" lang="en">

<script>
	function selectUsersListExcel() {
		// 엑셀 다운로드를 위한 URL 설정
	    var downloadUrl = "<c:url value='/Admin/UsersListExcel'/>";

	 	// 현재 페이지를 다운로드 URL로 리디렉션합니다.
	    window.location.href = downloadUrl;
	}
</script>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- Tell the browser to be responsive to screen width -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="keywords"
        content="wrappixel, admin dashboard, html css dashboard, web dashboard, bootstrap 5 admin, bootstrap 5, css3 dashboard, bootstrap 5 dashboard, materialpro admin bootstrap 5 dashboard, frontend, responsive bootstrap 5 admin template, materialpro admin lite design, materialpro admin lite dashboard bootstrap 5 dashboard template">
    <meta name="description"
        content="Material Pro Lite is powerful and clean admin dashboard template, inpired from Bootstrap Framework">
    <meta name="robots" content="noindex,nofollow">
    <title>ItNang Admin UsersList</title>
    <link rel="canonical" href="https://www.wrappixel.com/templates/materialpro-lite/" />
    
    <!-- jQuery -->
	<script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
    
    <!-- 부트스트랩 -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
    
    <!-- Favicon icon -->
    <!-- 파비콘 -->
	<link rel="shortcut icon" sizes="16x16" href="/resources/project/image/favicon/favicon.ico">
    
    <!-- Custom CSS -->
    <link href="/resources/assets2/css/style.min.css" rel="stylesheet">
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->
</head>

<body>
    <!-- ============================================================== -->
    <!-- Preloader - style you can find in spinners.css -->
    <!-- ============================================================== -->
    <div class="preloader">
        <div class="lds-ripple">
            <div class="lds-pos"></div>
            <div class="lds-pos"></div>
        </div>
    </div>
    <!-- ============================================================== -->
    <!-- Main wrapper - style you can find in pages.scss -->
    <!-- ============================================================== -->
    <div id="main-wrapper" data-layout="vertical" data-navbarbg="skin6" data-sidebartype="full"
        data-sidebar-position="absolute" data-header-position="absolute" data-boxed-layout="full">
        <!-- ============================================================== -->
        <!-- Topbar header - style you can find in pages.scss -->
        <!-- ============================================================== -->
        <header class="topbar" data-navbarbg="skin6">
        
            <jsp:include page="../admin/AdminHnav.jsp"></jsp:include>
            
        </header>
        <!-- ============================================================== -->
        <!-- End Topbar header -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- Left Sidebar - style you can find in sidebar.scss  -->
        <!-- ============================================================== -->
        
        <jsp:include page="../admin/AdminBnav.jsp"></jsp:include>
        
        <!-- ============================================================== -->
        <!-- End Left Sidebar - style you can find in sidebar.scss  -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- Page wrapper  -->
        <!-- ============================================================== -->
        <div class="page-wrapper">
            <!-- ============================================================== -->
            <!-- Bread crumb and right sidebar toggle -->
            <!-- ============================================================== -->
            <div class="page-breadcrumb">
                <div class="row align-items-center">
                    <div class="col-md-6 col-8 align-self-center">
                        <h3 class="page-title mb-0 p-0">Users List</h3>
                        <div class="d-flex align-items-center">
                            <nav aria-label="breadcrumb">
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="/Admin/Dashboard">Home</a></li>
                                    <li class="breadcrumb-item active" aria-current="page">Users List</li>
                                </ol>
                            </nav>
                        </div>
                    </div>
                    <div class="col-md-6 col-4 align-self-center">
                        <div class="text-end upgrade-btn">
                            <a href="#"
                                class="btn btn-danger d-none d-md-inline-block text-white" target="_blank">멀 쓰지?</a>
                        </div>
                    </div>
                </div>
            </div>
            <!-- ============================================================== -->
            <!-- End Bread crumb and right sidebar toggle -->
            <!-- ============================================================== -->
            <!-- ============================================================== -->
            <!-- Container fluid  -->
            <!-- ============================================================== -->
            <div class="container-fluid">
                <!-- ============================================================== -->
                <!-- Start Page Content -->
                <!-- ============================================================== -->
                <!-- Row -->
                <div>
					<form id="searchForm">
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
								<button title="검색" class="btn btn-sm btn-primary"> 검색 </button>
							</div>
							<div class="col-1 d-grid">
								<button type="button" title="엑셀 다운로드" class="btn btn-sm btn-dark" onclick="selectUsersListExcel()"> 엑셀 다운로드 </button>
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
								<tr class="Selects"  data-bs-toggle="modal" data-bs-target="#UserSelectModal"> <!-- onclick="location.href='/AdminUserSelect${item.uNo}'" -->
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
									<th> <a href="AdminUserDelete/${item.uNo}" class="btn btn-danger btn-sm"> <i class="bi bi-trash"></i> </a> <a href="AdminUserUpdate/${item.uNo}" class="btn btn-warning btn-sm"> <i class="bi bi-recycle"></i> </a> </th>
								<script>
									$(".Selects").on("click", function() {
										var user = ${item.uNo};
										$("#select").load("/Admin/UserSelect" + user)
									})
								</script>
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
				
				<!-- Modal -->
				<div id="modalDiv">
					<!-- UserSelect Modal -->
					<div class="modal fade" id="UserSelectModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
					  <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable">
					    <div class="modal-content" id="select">
					    
					    </div>
					  </div>
					</div>
				</div>
                <!-- Row -->
                <!-- ============================================================== -->
                <!-- End PAge Content -->
                <!-- ============================================================== -->
                <!-- ============================================================== -->
                <!-- Right sidebar -->
                <!-- ============================================================== -->
                <!-- .right-sidebar -->
                <!-- ============================================================== -->
                <!-- End Right sidebar -->
                <!-- ============================================================== -->
            </div>
            <!-- ============================================================== -->
            <!-- End Container fluid  -->
            <!-- ============================================================== -->
            
            <!-- ============================================================== -->
            <!-- footer -->
            <!-- ============================================================== -->
			<!-- 풋터 인크루드 -->
            <jsp:include page="../admin/AdminFooter.jsp"></jsp:include>
            <!-- ============================================================== -->
            <!-- End footer -->
            <!-- ============================================================== -->
            
        </div>
        <!-- ============================================================== -->
        <!-- End Page wrapper  -->
        <!-- ============================================================== -->
    </div>
    <!-- ============================================================== -->
    <!-- End Wrapper -->
    <!-- ============================================================== -->
    <!-- ============================================================== -->
    <!-- All Jquery -->
    <!-- ============================================================== -->
    <script src="/resources/assets/plugins/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap tether Core JavaScript -->
    <script src="/resources/assets/plugins/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
    <script src="/resources/assets2/js/app-style-switcher.js"></script>
    <!--Wave Effects -->
    <script src="/resources/assets2/js/waves.js"></script>
    <!--Menu sidebar -->
    <script src="/resources/assets2/js/sidebarmenu.js"></script>
    <!--Custom JavaScript -->
    <script src="/resources/assets2/js/custom.js"></script>
</body>

</html>