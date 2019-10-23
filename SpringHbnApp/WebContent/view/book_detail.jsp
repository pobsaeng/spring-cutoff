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
<div style="margin: 0 auto; width:80%">
	<div class="container">
		<table class="table table-bordered">
		<tr class="btn-success">
			<th width="180">Title</th>
			<th>Detail</th>
		</tr>
		<tr>
			<td rowspan="3"><img src="./images/${book.isbn}.gif" class="img-responsive" alt="Cinque Terre" width="180" height="236"/></td>
			<td>${book.title}</td>
		</tr>
		<tr>
			<td>${book.author}</td>
		</tr>
		<tr>
			<td>${book.price}บาท</td>
		</tr>
	</table>
	<form action="BookSrvl?addToCart" method="post" >
		Amount:
		<div class="form-horizontal">
		<input name="amount" value="<c:choose><c:when test="${not empty param.amount}">${param.amount}</c:when><c:otherwise>1</c:otherwise></c:choose>"/>
		<input type="hidden" name="isbn" value="${book.isbn}" /> 
		<input type="submit" value="ใส่ตะกร้า" class="btn btn-primary"/>
		<c:if test="${not empty invalidAmount}">
		<font color="#FF0000">${invalidAmount}</font>
		</c:if>
		</div>
	</form>	
	</div>
</div>
</body>
</html>