<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html dir="ltr" lang="en">

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
    <title>ItNang Admin DashBoard</title>
    <link rel="canonical" href="https://www.wrappixel.com/templates/materialpro-lite/" />
    
    <!-- Favicon icon -->
    <!-- 파비콘 -->
	<link rel="shortcut icon" sizes="16x16" href="/resources/project/image/favicon/favicon.ico">
    
    <!-- chartist CSS -->
    <link href="/resources/assets/plugins/chartist-js/dist/chartist.min.css" rel="stylesheet">
    <link href="/resources/assets/plugins/chartist-js/dist/chartist-init.css" rel="stylesheet">
    <link href="/resources/assets/plugins/chartist-plugin-tooltip-master/dist/chartist-plugin-tooltip.css" rel="stylesheet">
    
    <!--This page css - Morris CSS -->
    <link href="/resources/assets/plugins/c3-master/c3.min.css" rel="stylesheet">
    
    <!-- Custom CSS -->
    <link href="/resources/assets2/css/style.min.css" rel="stylesheet">
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
                        <h3 class="page-title mb-0 p-0">Dashboard</h3>
                        <div class="d-flex align-items-center">
                            <nav aria-label="breadcrumb">
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="/Admin/Dashboard">Home</a></li>
                                    <li class="breadcrumb-item active" aria-current="page">Dashboard</li>
                                </ol>
                            </nav>
                        </div>
                    </div>
                    <div class="col-md-6 col-4 align-self-center">
                        <div class="text-end upgrade-btn">
                            <a href="/" class="btn btn-danger d-none d-md-inline-block text-white" target="_blank">멀 쓸까?</a>
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
                <!-- Sales chart -->
                <!-- ============================================================== -->
                <div class="row">
                    <!-- Column -->
                    <div class="col-lg-8">
                        <div class="card">
                            <div class="card-body">
                                <div class="row">
                                    <div class="col-12">
                                        <div class="d-flex flex-wrap align-items-center">
                                            <div>
                                                <h3 class="card-title">Sales Overview</h3>
                                                <h6 class="card-subtitle">Ample Admin Vs Pixel Admin</h6>
                                            </div>
                                            <div class="ms-lg-auto mx-sm-auto mx-lg-0">
                                                <ul class="list-inline d-flex">
                                                    <li class="me-4">
                                                        <h6 class="text-success"><i
                                                                class="fa fa-circle font-10 me-2 "></i>Ample</h6>
                                                    </li>
                                                    <li>
                                                        <h6 class="text-info"><i
                                                                class="fa fa-circle font-10 me-2"></i>Pixel</h6>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-12">
                                        <div class="amp-pxl" style="height: 360px;">
                                            <div class="chartist-tooltip">
                                            	
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="card">
                            <div class="card-body">
                                <h3 class="card-title">Our Visitors </h3>
                                <h6 class="card-subtitle">Different Devices Used to Visit</h6>
                                <div id="visitor"
                                    style="height: 290px; width: 100%; max-height: 290px; position: relative;"
                                    class="c3">
                                    <div class="c3-tooltip-container"
                                        style="position: absolute; pointer-events: none; display: none;">
                                    </div>
                                </div>
                            </div>
                            <div>
                                <hr class="mt-0 mb-0">
                            </div>
                            <div class="card-body text-center ">
                                <ul class="list-inline d-flex justify-content-center align-items-center mb-0">
                                    <li class="me-4">
                                        <h6 class="text-info"><i class="fa fa-circle font-10 me-2 "></i>Mobile</h6>
                                    </li>
                                    <li class="me-4">
                                        <h6 class=" text-primary"><i class="fa fa-circle font-10 me-2"></i>Desktop</h6>
                                    </li>
                                    <li class="me-4">
                                        <h6 class=" text-success"><i class="fa fa-circle font-10 me-2"></i>Tablet</h6>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- ============================================================== -->
                <!-- Sales chart -->
                <!-- ============================================================== -->
                <div class="row">
                    <!-- Column -->
                    <div class="col-lg-4 col-xlg-3">
                        <!-- Column -->
                        <div class="card">
                            <img class="card-img-top" src="/resources/assets/images/background/profile-bg.jpg"
                                alt="Card image cap">
                            <div class="card-body little-profile text-center">
                                <div class="pro-img"><img src="/resources/assets/images/users/4.jpg" alt="user"></div>
                                <h3 class="mb-0">Angela Dominic</h3>
                                <p>Web Designer &amp; Developer</p>
                                <a href="javascript:void(0)"
                                    class="mt-2 waves-effect waves-dark btn btn-primary btn-md btn-rounded">Follow</a>
                                <div class="row text-center mt-3">
                                    <div class="col-lg-4 col-md-4 mt-3">
                                        <h3 class="mb-0 font-light">1099</h3><small>Articles</small>
                                    </div>
                                    <div class="col-lg-4 col-md-4 mt-3">
                                        <h3 class="mb-0 font-light">23,469</h3><small>Followers</small>
                                    </div>
                                    <div class="col-lg-4 col-md-4 mt-3">
                                        <h3 class="mb-0 font-light">6035</h3><small>Following</small>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- Column -->
                        <div class="card">
                            <div class="card-body bg-info">
                                <h4 class="text-white card-title">My Contacts</h4>
                                <h6 class="card-subtitle text-white mb-0 op-5">Checkout my contacts here</h6>
                            </div>
                            <div class="card-body">
                                <div class="message-box contact-box">
                                    <h2 class="add-ct-btn"><button type="button"
                                            class="btn btn-circle btn-lg btn-success waves-effect waves-dark">+</button>
                                    </h2>
                                    <div class="message-widget contact-widget">
                                        <!-- Message -->
                                        <a href="#" class="d-flex align-items-center">
                                            <div class="user-img mb-0"> <img src="/resources/assets/images/users/1.jpg"
                                                    alt="user" class="img-circle"> <span
                                                    class="profile-status online pull-right"></span> </div>
                                            <div class="mail-contnet">
                                                <h5 class="mb-0">Pavan kumar</h5> <span
                                                    class="mail-desc">info@wrappixel.com</span>
                                            </div>
                                        </a>
                                        <!-- Message -->
                                        <a href="#" class="d-flex align-items-center">
                                            <div class="user-img mb-0"> <img src="/resources/assets/images/users/2.jpg"
                                                    alt="user" class="img-circle"> <span
                                                    class="profile-status busy pull-right"></span> </div>
                                            <div class="mail-contnet">
                                                <h5 class="mb-0">Sonu Nigam</h5> <span
                                                    class="mail-desc">pamela1987@gmail.com</span>
                                            </div>
                                        </a>
                                        <!-- Message -->
                                        <a href="#" class="d-flex align-items-center">
                                            <div class="user-img mb-0"> <span class="round">A</span> <span
                                                    class="profile-status away pull-right"></span> </div>
                                            <div class="mail-contnet">
                                                <h5 class="mb-0">Arijit Sinh</h5> <span
                                                    class="mail-desc">cruise1298.fiplip@gmail.com</span>
                                            </div>
                                        </a>
                                        <!-- Message -->
                                        <a href="#" class="d-flex align-items-center">
                                            <div class="user-img mb-0"> <img src="/resources/assets/images/users/4.jpg"
                                                    alt="user" class="img-circle"> <span
                                                    class="profile-status offline pull-right"></span> </div>
                                            <div class="mail-contnet">
                                                <h5 class="mb-0">Pavan kumar</h5> <span
                                                    class="mail-desc">kat@gmail.com</span>
                                            </div>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-8 col-xlg-9">
                        <div class="card">
                            <!-- Nav tabs -->
                            <ul class="nav nav-tabs profile-tab" role="tablist">
                                <li class="nav-item"> <a class="nav-link active" data-bs-toggle="tab" href="#home"
                                        role="tab">Activity</a>
                                </li>
                                <li class="nav-item"> <a class="nav-link" data-bs-toggle="tab" href="#profile"
                                        role="tab">Profile</a> </li>
                                <li class="nav-item"> <a class="nav-link" data-bs-toggle="tab" href="#settings"
                                        role="tab">Settings</a>
                                </li>
                            </ul>
                            
                            <!-- Tab panes -->
                            <div class="tab-content">
                                <div class="tab-pane active" id="home" role="tabpanel">
                                    <div class="card-body">
                                        <div class="profiletimeline border-start-0">
                                            <div class="sl-item">
                                                <div class="sl-left"> <img src="/resources/assets/images/users/1.jpg" alt="user"
                                                        class="img-circle"> </div>
                                                <div class="sl-right">
                                                    <div><a href="#" class="link">John Doe</a> <span class="sl-date">5
                                                            minutes ago</span>
                                                        <p>assign a new task <a href="#"> Design weblayout</a></p>
                                                        <div class="row">
                                                            <div class="col-lg-3 col-md-6 mb-3">
                                                            	<img src="/resources/assets/images/big/img1.jpg" alt="user" class="img-responsive radius w-100">
                                                            </div>
                                                            
                                                            <div class="col-lg-3 col-md-6 mb-3">
                                                            	<img src="/resources/assets/images/big/img2.jpg" alt="user" class="img-responsive radius w-100">
                                                            </div>
                                                            
                                                            <div class="col-lg-3 col-md-6 mb-3">
                                                            	<img src="/resources/assets/images/big/img3.jpg" alt="user" class="img-responsive radius w-100">
                                                            </div>
                                                            
                                                            <div class="col-lg-3 col-md-6 mb-3">
                                                            	<img src="/resources/assets/images/big/img4.jpg" alt="user" class="img-responsive radius w-100">
                                                            </div>
                                                        </div>
                                                        <div class="like-comm"> <a href="javascript:void(0)"
                                                                class="link me-2">2
                                                                comment</a> <a href="javascript:void(0)"
                                                                class="link me-2"><i
                                                                    class="fa fa-heart text-danger"></i> 5 Love</a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <hr>
                                            <div class="sl-item">
                                                <div class="sl-left"> 
                                                	<img src="/resources/assets/images/users/2.jpg" alt="user" class="img-circle"> 
                                                </div>
                                                <div class="sl-right">
                                                    <div> 
                                                    	<a href="#" class="link">John Doe</a> <span class="sl-date">5 minutes ago</span>
                                                        <div class="mt-3 row">
                                                            <div class="col-md-3 col-xs-12"><img
                                                                    src="/resources/assets/images/big/img1.jpg" alt="user"
                                                                    class="img-responsive w-100 radius"></div>
                                                            <div class="col-md-9 col-xs-12">
                                                                <p> Lorem ipsum dolor sit amet, consectetur adipiscing
                                                                    elit. Integer nec odio. Praesent libero. Sed cursus
                                                                    ante dapibus diam. </p> <a href="#"
                                                                    class="btn btn-success text-white"> Design
                                                                    weblayout</a>
                                                            </div>
                                                        </div>
                                                        <div class="like-comm mt-3"> <a href="javascript:void(0)"
                                                                class="link me-2">2 comment</a> <a
                                                                href="javascript:void(0)" class="link me-2"><i
                                                                    class="fa fa-heart text-danger"></i> 5 Love</a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <hr>
                                            <div class="sl-item">
                                                <div class="sl-left"> <img src="/resources/assets/images/users/3.jpg" alt="user"
                                                        class="img-circle"> </div>
                                                <div class="sl-right">
                                                    <div><a href="#" class="link">John Doe</a> <span class="sl-date">5
                                                            minutes ago</span>
                                                        <p class="mt-2"> Lorem ipsum dolor sit amet, consectetur
                                                            adipiscing elit. Integer nec odio. Praesent libero. Sed
                                                            cursus ante dapibus diam. Sed nisi. Nulla quis sem at nibh
                                                            elementum imperdiet. Duis sagittis ipsum. Praesent mauris.
                                                            Fusce nec tellus sed augue semper </p>
                                                    </div>
                                                    <div class="like-comm mt-3"> <a href="javascript:void(0)"
                                                            class="link me-2">2
                                                            comment</a> <a href="javascript:void(0)"
                                                            class="link me-2"><i class="fa fa-heart text-danger"></i>
                                                            5 Love</a> </div>
                                                </div>
                                            </div>
                                            <hr>
                                            <div class="sl-item">
                                                <div class="sl-left"> <img src="/resources/assets/images/users/4.jpg" alt="user"
                                                        class="img-circle"> </div>
                                                <div class="sl-right">
                                                    <div><a href="#" class="link">John Doe</a> <span class="sl-date">5
                                                            minutes ago</span>
                                                        <blockquote class="mt-2">
                                                            Lorem ipsum dolor sit amet, consectetur adipisicing elit,
                                                            sed do eiusmod tempor incididunt
                                                        </blockquote>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                
                                <!--second tab-->
                                <div class="tab-pane" id="profile" role="tabpanel">
                                    <div class="card-body">
                                        <div class="row">
                                            <div class="col-md-3 col-xs-6 b-r"> <strong>Full Name</strong>
                                                <br>
                                                <p class="text-muted">Johnathan Deo</p>
                                            </div>
                                            <div class="col-md-3 col-xs-6 b-r"> <strong>Mobile</strong>
                                                <br>
                                                <p class="text-muted">(123) 456 7890</p>
                                            </div>
                                            <div class="col-md-3 col-xs-6 b-r"> <strong>Email</strong>
                                                <br>
                                                <p class="text-muted">johnathan@admin.com</p>
                                            </div>
                                            <div class="col-md-3 col-xs-6"> <strong>Location</strong>
                                                <br>
                                                <p class="text-muted">London</p>
                                            </div>
                                        </div>
                                        <hr>
                                        <p class="mt-4">Donec pede justo, fringilla vel, aliquet nec, vulputate eget,
                                            arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam
                                            dictum felis eu pede mollis pretium. Integer tincidunt.Cras dapibus. Vivamus
                                            elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula,
                                            porttitor eu, consequat vitae, eleifend ac, enim.</p>
                                        <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.
                                            Lorem Ipsum has been the industry's standard dummy text ever since the
                                            1500s, when an unknown printer took a galley of type and scrambled it to
                                            make a type specimen book. It has survived not only five centuries </p>
                                        <p>It was popularised in the 1960s with the release of Letraset sheets
                                            containing Lorem Ipsum passages, and more recently with desktop publishing
                                            software like Aldus PageMaker including versions of Lorem Ipsum.</p>
                                        <h4 class="font-medium mt-4">Skill Set</h4>
                                        <hr>
                                        <h5 class="d-flex mt-4">Wordpress <span class="ms-auto">80%</span></h5>
                                        <div class="progress">
                                            <div class="progress-bar bg-success" role="progressbar" aria-valuenow="80"
                                                aria-valuemin="0" aria-valuemax="100" style="width:80%; height:6px;">
                                                <span class="sr-only">50% Complete</span> </div>
                                        </div>
                                        <h5 class="d-flex mt-4">HTML 5 <span class="ms-auto">90%</span></h5>
                                        <div class="progress">
                                            <div class="progress-bar bg-info" role="progressbar" aria-valuenow="90"
                                                aria-valuemin="0" aria-valuemax="100" style="width:90%; height:6px;">
                                                <span class="sr-only">50% Complete</span> </div>
                                        </div>
                                        <h5 class="d-flex mt-4">jQuery <span class="ms-auto">50%</span></h5>
                                        <div class="progress">
                                            <div class="progress-bar bg-danger" role="progressbar" aria-valuenow="50"
                                                aria-valuemin="0" aria-valuemax="100" style="width:50%; height:6px;">
                                                <span class="sr-only">50% Complete</span> </div>
                                        </div>
                                        <h5 class="d-flex mt-4">Photoshop <span class="ms-auto">70%</span></h5>
                                        <div class="progress">
                                            <div class="progress-bar bg-warning" role="progressbar" aria-valuenow="70"
                                                aria-valuemin="0" aria-valuemax="100" style="width:70%; height:6px;">
                                                <span class="sr-only">50% Complete</span> </div>
                                        </div>
                                    </div>
                                </div>
                                
                                <div class="tab-pane" id="settings" role="tabpanel">
                                    <div class="card-body">
                                        <form class="form-horizontal form-material mx-2">
                                            <div class="form-group">
                                                <label class="col-md-12">Full Name</label>
                                                <div class="col-md-12">
                                                    <input type="text" placeholder="Johnathan Doe"
                                                        class="form-control form-control-line ps-0">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label for="example-email" class="col-md-12">Email</label>
                                                <div class="col-md-12">
                                                    <input type="email" placeholder="johnathan@admin.com"
                                                        class="form-control form-control-line ps-0" name="example-email"
                                                        id="example-email">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-md-12">Password</label>
                                                <div class="col-md-12">
                                                    <input type="password" value="password"
                                                        class="form-control form-control-line ps-0">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-md-12">Phone No</label>
                                                <div class="col-md-12">
                                                    <input type="text" placeholder="123 456 7890"
                                                        class="form-control form-control-line ps-0">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-md-12">Message</label>
                                                <div class="col-md-12">
                                                    <textarea rows="5"
                                                        class="form-control form-control-line ps-0"></textarea>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-sm-12">Select Country</label>
                                                <div class="col-sm-12 border-bottom">
                                                    <select class="form-select shadow-none border-0 form-control-line ps-0">
                                                        <option>London</option>
                                                        <option>India</option>
                                                        <option>Usa</option>
                                                        <option>Canada</option>
                                                        <option>Thailand</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <div class="col-sm-12">
                                                    <button class="btn btn-success text-white">Update Profile</button>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- ============================================================== -->
                <!-- Table -->
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
    <!-- ============================================================== -->
    <!-- This page plugins -->
    <!-- ============================================================== -->
    <!-- chartist chart -->
    <script src="/resources/assets/plugins/chartist-js/dist/chartist.js"></script>
    <script src="/resources/assets/plugins/chartist-plugin-tooltip-master/dist/chartist-plugin-tooltip.min.js"></script>
    <!--c3 JavaScript -->
    <script src="/resources/assets/plugins/d3/d3.min.js"></script>
    <script src="/resources/assets/plugins/c3-master/c3.min.js"></script>
    <!--Custom JavaScript -->
    <script src="/resources/assets2/js/pages/dashboards/dashboard1.js"></script>
    <script src="/resources/assets2/js/custom.js"></script>
</body>

</html>