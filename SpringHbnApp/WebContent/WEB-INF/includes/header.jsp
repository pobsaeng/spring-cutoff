<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<title></title>
<meta name="description" content="">
<meta name="author" content="">
<style>
body {
	padding-top: 60px;
}
</style>
</head>
<body data-spy="scroll" data-target=".subnav" data-offset="0">
	<div class="header"></div>
	<div class="container">
		<div class="row">
			<div id="content" class="span12"></div>
		</div>
	</div>

	<div class="navbar navbar-fixed-top" xmlns="http://www.w3.org/1999/html">
		<div class="navbar-inner">
			<div class="container">
				<a class="brand" href="#" style="color: white;">Java Web Application</a>
				<div class="nav-collapse">
					<ul class="nav">
						<li class="add-menu"><a href="BookSrvl?bookForm">
						<i class="icon-edit icon-white"></i> Add Data</a></li>
					</ul>

					<ul class="nav pull-right">
						<li><a href="UserSrvl?findAllCustomer">Home</a></li>
						<li><a href="BookSrvl?showAllBook">Books</a></li>
						<li><a href="BookSrvl?showcart">Order Details</a></li>
					<li class="dropdown">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown">Language<b class="caret"></b></a>
						<ul class="dropdown-menu">
							<li><a href="#">Thai</a></li>
							<li class="divider"></li>
							<li><a href="#">EngLish</a></li>
						</ul>	
					</li>
					<li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
					<li>
					<form class="navbar-search pull-right">
                    	<input type="text" class="search-query" placeholder="Search">
                	</form>
                	</li>
					</ul>
					
				</div>
			</div>
		</div>
	</div>

<%-- 	<script src="${pageContext.request.contextPath}/resources/js/memorystore.js"></script> --%>
<%-- 	<script src="${pageContext.request.contextPath}/resources/js/utils.js"></script> --%>
<%-- 	<script src="${pageContext.request.contextPath}/resources/js/models/models.js"></script> --%>
<%-- 	<script src="${pageContext.request.contextPath}/resources/js/views/paginator.js"></script> --%>
<%-- 	<script src="${pageContext.request.contextPath}/resources/js/views/header.js"></script> --%>
<%-- 	<script src="${pageContext.request.contextPath}/resources/js/views/winelist.js"></script> --%>
<%-- 	<script src="${pageContext.request.contextPath}/resources/js/views/winedetails.js"></script> --%>
<%-- 	<script src="${pageContext.request.contextPath}/resources/js/views/about.js"></script> --%>
<%-- 	<script src="${pageContext.request.contextPath}/resources/js/main.js"></script> --%>
</body>
</html>
