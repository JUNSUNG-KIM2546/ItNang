<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	
	</head>

	<aside class="left-sidebar" data-sidebarbg="skin6">
	    <!-- Sidebar scroll-->
	    <div class="scroll-sidebar">
	        <!-- Sidebar navigation-->
	        <nav class="sidebar-nav">
	            <ul id="sidebarnav">
	                
	                <li class="sidebar-item"> <a class="sidebar-link waves-effect waves-dark sidebar-link"
	                        href="/" aria-expanded="false"><i class="mdi me-2 mdi-arrow-right-box"></i><span
	                            class="hide-menu">사이트 바로가기</span></a></li>
					<hr/>
	                <!-- Admin Menu -->
	                <li class="sidebar-item"> <a class="sidebar-link waves-effect waves-dark sidebar-link"
	                        href="/Admin/Dashboard" aria-expanded="false"><i class="mdi me-2 mdi-gauge"></i><span
	                            class="hide-menu">Dashboard</span></a></li>
	                <li class="sidebar-item"> <a class="sidebar-link waves-effect waves-dark sidebar-link"
	                        href="/Admin/UsersList" aria-expanded="false"><i class="mdi me-2 mdi-account-check"></i><span 
	                        	class="hide-menu">Users List</span></a></li>
	                        
	                <li class="sidebar-item"> <a class="sidebar-link waves-effect waves-dark sidebar-link"
	                        href="/boast/list" aria-expanded="false"><i class="mdi me-2 mdi-table"></i><span
	                            class="hide-menu">Boast List</span></a></li>
	                            
	                <li class="sidebar-item"> <a class="sidebar-link waves-effect waves-dark sidebar-link"
	                        href="/Admin/BoardList" aria-expanded="false"><i class="mdi me-2 mdi-table"></i><span
	                            class="hide-menu">Board List</span></a></li>
	                            
	                <li class="sidebar-item"> <a class="sidebar-link waves-effect waves-dark sidebar-link"
	                        href="icon-material.html" aria-expanded="false"><i
	                            class="mdi me-2 mdi-emoticon"></i><span class="hide-menu">Icon</span></a></li>
	                            
	                <li class="sidebar-item"> <a class="sidebar-link waves-effect waves-dark sidebar-link"
	                        href="map-google.html" aria-expanded="false"><i class="mdi me-2 mdi-earth"></i><span
	                            class="hide-menu">Google Map</span></a></li>
	                            
	                <li class="sidebar-item"> <a class="sidebar-link waves-effect waves-dark sidebar-link"
	                        href="pages-blank.html" aria-expanded="false"><i
	                            class="mdi me-2 mdi-book-open-variant"></i><span class="hide-menu">Blank</span></a>
	                </li>
	                <li class="sidebar-item"> <a class="sidebar-link waves-effect waves-dark sidebar-link"
	                        href="pages-error-404.html" aria-expanded="false"><i class="mdi me-2 mdi-help-circle"></i><span
	                            class="hide-menu">Error 404</span></a>
	                </li>
	               
	            </ul>
	
	        </nav>
	        <!-- End Sidebar navigation -->
	    </div>
	    <!-- End Sidebar scroll-->
	    <div class="sidebar-footer">
	        <div class="row">
	            <div class="col-4 link-wrap">
	                <!-- item-->
	                <a href="/" class="link" data-toggle="tooltip" title="" data-original-title="Settings"><i
	                        class="ti-home"></i></a>
	            </div>
	            <div class="col-4 link-wrap">
	                <!-- item-->
	                <a href="" class="link" data-toggle="tooltip" title="" data-original-title="Email"><i
	                        class="mdi mdi-gmail"></i></a>
	            </div>
	            <div class="col-4 link-wrap">
	                <!-- item-->
	                <a href="/actionLogout" class="link" data-toggle="tooltip" title="" data-original-title="Logout"><i
	                        class="mdi mdi-power"></i></a>
	            </div>
	        </div>
	    </div>
	</aside>
	
</html>
