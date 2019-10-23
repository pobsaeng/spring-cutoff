<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title></title>
</head>
<body>

<!-- data -->
<div class="row">
<c:if test="${!empty Book}">

	<!-- column 1 -->
	<div class="col-md-3 text-center">
	<div class="thumbnail">
	<br/>
		<img src="../resources/images/${Book.img}" height="100" width="100"/>
		<div class="caption">
			<p><c:out value="${Book.title}" /></p>
			<p><a href="#" class="btn btn-primary">Buy Now!</a></p>
		</div>
	</div>
    </div>
    	
    <!-- column 2 -->
	<div class="col-md-6">
	<div class="caption">
		<p>ISBN : <c:out value="${Book.isbn}"/></p>
		<p>Title : <c:out value="${Book.title}"/></p>
		<p>Author : <c:out value="${Book.author}"/></p>
		<p>Price : <c:out value="${Book.price}"/></p>
		<p>Publisher : <c:out value="${Book.publisher}"/></p>
		<p>YearPublisher : <c:out value="${Book.yearPublisher}"/></p>
	</div>
    </div>
    
</c:if>
</div>
<div class="text-center">
<ul class="pager"><li class="pull-center"><a href="${pageContext.request.contextPath}/bookController/bookList?currentPage">Back to previous</a></li></ul>
</div>
<hr class="soften">

</body>
</html>