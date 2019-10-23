<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Spring MVC submit form AJAX JQuery</title>
</head>
<body>

<form:form commandName="usersForm" action="${pageContext.request.contextPath}/submitForm" method="post" id="submitForm">     

	    <fieldset style="width: 300px;">
	        <legend>User details</legend>
	        <ol>
	            <li>
	                <p><label for=name>Name</label>
	                <form:input path="name"  type="text" placeholder="First and last name" /></p>
	            </li>
	            <li>
	                <p><label for=name>Date</label>&nbsp;&nbsp;
	            	<form:input path="dob" type="date" required="true"/></p>
	            </li>
	            <li>
	                <p><label for=email>Email</label>
	                <form:input path="email" type="text" required="true" /></p>
	            </li>
	            <li>
	                <p><label for=phone>Phone</label>
	                <form:input path="phone" type="text" required="true" /></p>
	            </li>
	         </ol>
	    </fieldset>

		<fieldset style="width: 300px;">
			<button type="submit" class="btn btn-default">Add</button>
		</fieldset>

	</form:form> 		
        
</body>
</html>