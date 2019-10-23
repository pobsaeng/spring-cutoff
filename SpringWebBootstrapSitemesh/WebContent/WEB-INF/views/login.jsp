<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>Login Page For Security</title>
</head>
<body onload='document.f.j_username.focus();'>
	<c:if test="${not empty error}">
		<div style="color: red; padding-left: 180px; font-weight: bold;">
			User name and Password invalid.
			<%--<br /> Caused : ${sessionScope["SPRING_SECURITY_LAST_EXCEPTION"].message}--%>
		</div><br />
	</c:if>

		<form name='f' action="<c:url value='j_spring_security_check' />" method='POST' class="form-horizontal">
		<div class="form-group"><label for="ageInput" class="col-sm-2 control-label">User name:</label> 
			<div class="col-md-5">
				<input type="text" name='j_username' class="form-control"/>
			</div>
		</div>
			
		<div class="form-group"><label for="ageInput" class="col-sm-2 control-label">Password:</label>
			<div class="col-md-5">
				<input type="password" name="j_password" class="form-control"/>
			</div>
		</div>
<%-- 		<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" /> --%>
		
		<div class="form-group"><label for="genderOptions" class="col-sm-2 control-label"></label>
			<div class="col-md-5">	
			<div class="form-actions">
					<input type="submit" class="btn btn-primary" value="Login"/>
					<input type="reset" class="btn btn-primary" value="Cancel"/>
				</div>
			</div>
			</div>
 		</form>

	<sec:authorize access="isAuthenticated()">
    	<div>Authentication : Sucessed</div>
	</sec:authorize>
	<sec:authorize access="hasRole('ROLE_USER')">
		<div>User name : ${pageContext.request.userPrincipal.name}</div>
		Role : <sec:authentication property="principal.authorities"/>
	</sec:authorize>
	<sec:authorize access="hasRole('ROLE_ADMIN')">
		<div>User name : ${pageContext.request.userPrincipal.name}</div>
		Role : <sec:authentication property="principal.authorities"/>
		<div><a href="<c:url value="/j_spring_security_logout"/>">== Logout ==</a></div>
	</sec:authorize>

	<sec:authorize ifAllGranted="ROLE_USER">
   		<div>Welcome <%= request.getUserPrincipal().getName() %> Role <sec:authentication property="principal.authorities"/> </div>
   		<div><a href="<c:url value="/j_spring_security_logout"/>">== Logout ==</a></div>
	</sec:authorize>
<%-- 	<c:if test="${pageContext.request.userPrincipal.name != null}"> --%>
<!-- 		<h1>User has been login, please logout!!</h1><br/> -->
<%-- 		Welcome : ${pageContext.request.userPrincipal.name} <br/> --%>
<%-- 		<a href='<c:url value="/j_spring_security_logout" />' >Logout</a> --%>
<%-- 	</c:if> --%>
</body>
</html>