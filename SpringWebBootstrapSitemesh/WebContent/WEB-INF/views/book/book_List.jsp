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
<div class="row text-center">
	<c:if test="${!empty listBook}">
		<c:forEach items="${listBook}" var="book">
            <div class="col-xs-6 col-sm-4 col-md-3">
                <div class="thumbnail" style="height: 250px; margin-bottom: 20px;">
                <br/>
                	<a href="${pageContext.request.contextPath}/bookController/bookDetail?isbn=${book.isbn}">
       				<img src="../resources/images/${book.img}" height="100" width="80"/>
       				</a>
                    <div class="caption">
						<p style="height: 45px;overflow:hidden;"><c:out value="${book.title}" /></p>
             			<p><a href="#" class="btn btn-primary">Buy Now!</a></p>
                    </div>
                </div>
            </div>
		</c:forEach>
	</c:if>
</div>

<!-- pagination -->
<table>
<tr><td>
	<nav>
	<ul class="pagination">
<!-- 	previous -->
	<c:choose>
		<c:when test="${currentPage != 1}">
			<li><a href="${pageContext.request.contextPath}/bookController/bookList?currentPage=${currentPage - 1}" >&laquo;</a></li>
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
				<li><a id="pageLink" href="${pageContext.request.contextPath}/bookController/bookList?currentPage=${i}" >${i}</a></li>
			</c:otherwise>
			</c:choose>
		</c:forEach>
		
<!-- 		next -->
		<c:choose>
		<c:when test="${currentPage lt noOfPages}">
			<li><a href="${pageContext.request.contextPath}/bookController/bookList?currentPage=${currentPage + 1}" >&raquo;</a></li>
		</c:when>
		<c:otherwise>
			<li class="disabled"><a href="#" style="cursor:no-drop;">&raquo;</a></li>
		</c:otherwise>
		</c:choose>
	</ul>
	</nav>
</td></tr>
</table>

</body>
</html>