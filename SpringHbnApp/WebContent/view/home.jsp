<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title></title>
<style type="text/css">
.btn-file {position: relative;overflow: hidden;}
table.table tr th{
background-color:gray !important; 
font-color:white !important;
} 
img{
    width: 25px !important;
    height: 25px !important;
}
</style>
<script type="text/javascript">
function saveForm(){
	var firstname = document.getElementById("firstname").value;
	var lastname = document.getElementById("lastname").value;
	var age = document.getElementById("age").value;
	
	if(firstname == ''){
		alert('Please enter First Name!');
		return false;
	}
	if(lastname == ''){
		alert('Please enter Last Name!');
		return false;
	}
	if(age == ''){
		alert('Please enter age!');
		return false;
	}
	if (isNaN(age) || x < 1 || x > 10) {
		alert('Please enter number of age!');
		return false;
	}
	document.getElementById("cusForm").submit();
}
function deleteCustomer(cusId, currentPage){
	if(confirm('Do you want to delete this Customer ?')){
		var url = '${pageContext.request.contextPath}/UserSrvl?delete&Id='+cusId+'&currentPage='+currentPage;
		window.location.href = url;
	}
}
function clearForm(){
	document.getElementById("hid").value ='';
	document.getElementById("firstname").value ='';
	document.getElementById("lastname").value ='';
	document.getElementById("age").value ='';
	return false;
}
</script>
</head>
<body>
<br/>
<div style="margin: 0 auto; width:100%">
	<div class="container">
	<form action="UserSrvl?save&currentPage=${currentPage}" method="post" class="form-horizontal" id="cusForm" onsubmit="return saveForm();">
		<div class="control-group">
		<label class="control-label">First Name</label>
			<div class="controls">
			<input type="text" name="cusFirstName" value="<c:out value="${customers.cusFirstName}"/>" placeholder="" id="firstname"/>
			<input type="hidden" id="hid" value="<c:out value="${customers.cusId}"/>" name="hId"/>
		</div>
		</div>
		
		<div class="control-group">
		<label class="control-label">Last Name</label>
			<div class="controls">
			<input type="text" name="cusLastName" value="<c:out value="${customers.cusLastName}"/>" placeholder="" id="lastname"/>
		</div>
		</div>
		
		<div class="control-group">
		<label class="control-label">Age</label>
			<div class="controls">
			<input type="text" name="cusAge" value="<c:out value="${customers.cusAge}"/>" placeholder="" id="age"/>
		</div>
		</div>

		<br/>
		<div class="controls">
			<input type="submit" value="Save" class="btn btn-success"/>
			<input type="button" value="Clear" class="btn btn-default" onclick="clearForm()"/>
		</div>
		<br/>
	 	<div class="panel panel-success">
		<div class="panel-heading">
			<h3 class="panel-title">All Customer!!!</h3>
		</div>
		<div class="row">
		<table class="table table-bordered">
		<thead>
			<tr class="btn-success">
				<th>Select</th>
				<th>ID</th>
				<th>FirstName</th>
				<th>LastName</th>
				<th>Age</th>
				<th width="11%" style="text-align: center">E + D</th>
			</tr>
		</thead>
		<c:if test="${!empty customerList}">
		<c:forEach items="${customerList}" var="customer">
			<tr>
				<td style="text-align: center" width="1%"><input type="checkbox" value="${customer.cusId}" name="selectedItems[${customer.cusId}]" /></td>
				<td><c:out value="${customer.cusId}" /></td>
				<td><c:out value="${customer.cusFirstName}" /></td>
				<td><c:out value="${customer.cusLastName}" /></td>
				<td><c:out value="${customer.cusAge}" /></td>
				<td style="text-align: center">
					<a href="${pageContext.request.contextPath}/UserSrvl?retrieve&Id=${customer.cusId}&currentPage=${currentPage}">
						<img src="${pageContext.request.contextPath}/resources/img/detail.png" 
							border="0" title="Edit this record" alt="Responsive image"/></a>
							&nbsp;&nbsp;
					<a href="javascript:deleteCustomer(${customer.cusId},currentPage=${currentPage})">
						<img src="${pageContext.request.contextPath}/resources/img/remove.png" border="0" title="Delete this record" alt="Responsive image"/></a>
				</td>
				
			</tr>
		</c:forEach>
		</c:if>
	</table>

	<nav>
	<ul class="pagination">
<!-- 	previous -->
	<c:choose>
		<c:when test="${currentPage != 1}">
			<li><a href="UserSrvl?findAllCustomer&currentPage=${currentPage - 1}" >&laquo;</a></li>
		</c:when>
		<c:otherwise>
			<li class="disabled"><a style="cursor:no-drop;">&laquo;</a></li>
			</c:otherwise>
		</c:choose>
<!-- 		page -->
		<c:forEach begin="1" end="${noOfPages}" var="i">
			<c:choose>
			<c:when test="${currentPage eq i}">
				<li class="active"><a style="background-color:#EEE9E9; color:black;">${i}</a></li>
			</c:when>
			<c:otherwise>
				<li><a id="pageLink" href="UserSrvl?findAllCustomer&currentPage=${i}" >${i}</a></li>
			</c:otherwise>
			</c:choose>
		</c:forEach>
<!-- 		next -->
		<c:choose>
		<c:when test="${currentPage lt noOfPages}">
			<li><a href="UserSrvl?findAllCustomer&currentPage=${currentPage + 1}" >&raquo;</a></li>
		</c:when>
		<c:otherwise>
			<li class="disabled"><a href="#" style="cursor:no-drop;">&raquo;</a></li>
				</c:otherwise>
		</c:choose>
	</ul>
	</nav>
	</div>
	</div>
	</form>
	</div>
</div>
</body>
</html>