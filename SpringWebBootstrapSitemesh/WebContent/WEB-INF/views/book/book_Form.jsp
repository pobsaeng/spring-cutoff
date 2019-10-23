<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Spring MVC</title>
</head>
<body>
	<div class="container">

		<article>
			<section id="title">
			</section>
			
			<form:form method="POST" class="form-horizontal" enctype="multipart/form-data" action="${pageContext.request.contextPath}/bookController/bookSave">
	<div class="form-group">
        <label class="col-xs-3 control-label">ISBN</label>
        <div class="col-xs-5">
            <form:input path="isbn" class="form-control" />
        </div>
    </div>
    
    <div class="form-group">
        <label class="col-xs-3 control-label">Title</label>
        <div class="col-xs-5">
            <form:input path="title" class="form-control"/>
        </div>
    </div>
    
    <div class="form-group">
        <label class="col-xs-3 control-label">Price</label>
        <div class="col-xs-3 form:inputGroupContainer">
            <div class="form:input-group">
                <form:input path="price" class="form-control"/>
                <span class="form:input-group-addon"></span>
            </div>
        </div>
    </div>
    
   <div class="form-group">
			 <label class="col-xs-3 control-label">Stock</label>
			<div class="col-md-3">
				<form:input path="stock" class="form-control" id="stock" placeholder=""/>
			</div>
		</div>

    <div class="form-group">
			 <label class="col-xs-3 control-label">Page</label>
			<div class="col-md-5">
				<form:input path="page" class="form-control" id="page" placeholder=""/>
			</div>
		</div>
		
		<div class="form-group">
			 <label class="col-xs-3 control-label">Weight</label>
			<div class="col-md-5">
				<form:input path="weight" class="form-control" id="weight" placeholder=""/>
			</div>
		</div>
		
		 <div class="form-group">
        <label class="col-xs-3 control-label">Author</label>
        <div class="col-xs-5">
            <form:input path="author" class="form-control"/>
        </div>
    </div>
    
    <div class="form-group">
			 <label class="col-xs-3 control-label">Publisher</label>
			<div class="col-md-5">
				<form:input path="publisher" class="form-control" id="form:inputEmail3" placeholder=""/>
			</div>
		</div>
		
		<div class="form-group">
        <label class="col-xs-3 control-label">Year Publisher</label>
        <div class="col-xs-5 selectContainer">
           <form:input path="yearPublisher" class="form-control" id="page" placeholder=""/>
        </div>
    </div>
		
		<div class="form-group">
			 <label class="col-xs-3 control-label">Upload File</label>
			<div class="col-md-3">
				<input type="file" name="file" class="form-control"/>
			</div> 
		</div>

    <div class="form-group">
     <label class="col-xs-3 control-label"></label>
        <div class="col-xs-5 col-xs-offset-3">
            <button type="submit" class="btn btn-default">Add New Book</button>
        </div>
    </div>
</form:form>
<br/>

<div class="row">
	<table class="table table-bordered">
		<thead>
			<tr class="btn-success">
				<th width="15%" >ISBN</th>
				<th>Title</th>
				<th>Author</th>
				<th>Publisher</th>
				<th>Year Publisher</th>
				<th>Page</th>
				<th>Price</th>
				<th>Weight</th>
				<th>Stock</th>
				<th width="11%" style="text-align: center">Action</th>
			</tr>
		</thead>
	<!-- data -->	
	<c:if test="${!empty listBook}">
		<c:forEach items="${listBook}" var="book">
			<tr>
				<td><c:out value="${book.isbn}" /></td>
				<td><c:out value="${book.title}" /></td>
				<td><c:out value="${book.author}" /></td>
				<td><c:out value="${book.publisher}" /></td>
				<td><c:out value="${book.yearPublisher}" /></td>
				<td><c:out value="${book.page}" /></td>
				<td><c:out value="${book.price}" /></td>
				<td><c:out value="${book.weight}" /></td>
				<td><c:out value="${book.stock}" /></td>
				<td style="text-align: center">
					<a href="${pageContext.request.contextPath}/UserSrvl?retrieve&Id=${customer.cusId}&currentPage=${currentPage}">
						<img src="${pageContext.request.contextPath}/resources/img/detail.png" 
							border="0" title="Edit this record" alt="Responsive image"/></a>
							&nbsp;&nbsp;
					<a href="javascript:deleteCustomer(${customer.cusId},currentPage=${currentPage})">
						<img src="${pageContext.request.contextPath}/resources/img/remove.png" border="0" title="Delete this record" alt=""/></a>
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
			
		</article>
	</div>
</body>
</html>