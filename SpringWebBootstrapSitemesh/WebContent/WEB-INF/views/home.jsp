<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html>
<body>
	<div class="row">
		<div class="col-md-4">
			<div>
				<c:if test="${!empty listBook}">
					<c:forEach items="${listBook}" var="book">
						<section class="section-pro">
							<ul class="thumbnails">
								<li class="span2">
									<div class="#">
										<c:out value="${book.isbn}" />
									</div>
									<div class="#">
										<c:out value="${book.title}" />
									</div>
									<div class="#">
										<c:out value="${book.price}" />
									</div>
								</li>
							</ul>
						</section>
					</c:forEach>
				</c:if>
			</div>
		</div>
	</div>

</body>
</html>