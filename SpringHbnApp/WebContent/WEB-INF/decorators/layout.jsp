<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator" prefix="decorator"%>
<%@page contentType="text/html; charset=UTF-8"%>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
<head>
<title><decorator:title default=""/></title>
<link href="${pageContext.request.contextPath}/resources/css/bootstrap.css" rel="stylesheet" />
<link href="${pageContext.request.contextPath}/resources/css/styles.css" rel="stylesheet" />
<link href="${pageContext.request.contextPath}/resources/css/docs.css" rel="stylesheet" />

<script src="${pageContext.request.contextPath}/resources/lib/jquery-1.7.2.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/lib/underscore-min.js"></script>
<script src="${pageContext.request.contextPath}/resources/lib/backbone-min.js"></script>
<script src="${pageContext.request.contextPath}/resources/lib/bootstrap.js"></script>
<decorator:head />
</head>

<body>
	<div><%@ include file="/WEB-INF/includes/header.jsp"%></div>
	<div><decorator:body /></div>
</body>
</html>

