<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
</head>
<body>
	<!-- nav-header -->
	<div class="nav-header">
	    <a href="${pageContext.request.contextPath}/EmpMainController" class="brand-logo">
		    <img class="brand-title" src="${pageContext.request.contextPath}/assets/emp/images/logo2.png">
	        <img class="logo-compact" src="${pageContext.request.contextPath}/assets/emp/images/logo2.png">
	    </a>
	
	    <div class="nav-control">
	        <div class="hamburger">
	            <span class="line"></span><span class="line"></span><span class="line"></span>
	        </div>
	    </div>
	</div>
	<!-- header -->
	<div class="header">
	    <div class="header-content">
	        <nav class="navbar navbar-expand">
	            <div class="collapse navbar-collapse justify-content-between">
	                <div class="header-left">
	                </div>
	
	                <ul class="navbar-nav header-right">
	                    <li class="nav-item dropdown header-profile">
	                        <a class="nav-link" href="#" role="button" data-toggle="dropdown">
	                            <span>${loginEmp.empName} 님</span><i class="mdi mdi-account"></i>
	                        </a>
	                        <div class="dropdown-menu dropdown-menu-right">
	                            <a href="${pageContext.request.contextPath}/ModifyEmpController" class="dropdown-item">
	                                <i class="icon-user"></i>
	                                <span class="ml-2">Profile Update</span>
	                            </a>
	                            <a href="${pageContext.request.contextPath}/LogoutEmpController" class="dropdown-item">
	                                <i class="icon-key"></i>
	                                <span class="ml-2">Logout </span>
	                            </a>
	                        </div>
	                    </li>
	                </ul>
	            </div>
	        </nav>
	    </div>
	</div>
</body>
</html>