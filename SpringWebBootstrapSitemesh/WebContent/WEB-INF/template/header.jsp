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
<style>
</style>
<%-- <link href="${pageContext.request.contextPath}/resources/assets/css/bootstrap-united.css" rel="stylesheet" /> --%>
</head>
<body>

		<div class="navbar navbar-default">

		<div style="padding-left:150px; high:20px;">
		<div class="navbar-collapse collapse navbar-responsive-collapse">
			<ul class="nav navbar-nav navbar-left">
				<li><a href="#"><spring:message code="header.home"/></a></li>
				<li><a href="add.html"><spring:message code="header.tutorials"/></a></li>
				<li><a href="bootstrap.html">bootstrap</a></li>
				<li><a href="regis.html"><spring:message code="header.register"/></a></li>
				<li><a href="formPage.html"><spring:message code="header.validation"/></a></li>
				<li><a href="login.html"><spring:message code="header.login"/></a></li>
				<li><a href="AdmissionForm.html">Sender</a></li>
				
				<li class="dropdown">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown"><spring:message code="header.language"/><b class="caret"></b></a>
					<ul class="dropdown-menu">
						<li><a href="?lang=th"><spring:message code="header.th.language"/></a></li>
						<li class="divider"></li>
						<li><a href="?lang=en"><spring:message code="header.en.language"/></a></li>
					</ul>
				</li>
			</ul>
		</div>
		</div>

	</div>
	<script src="${pageContext.request.contextPath}/resources/bootstrap/js/bootstrap.js"></script>
</body>
</html>