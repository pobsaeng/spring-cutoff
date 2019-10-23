<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>Books</title>
<script type="text/javascript">
function dialog(){
	$("#myModal").on("show", function() {    // wire up the OK button to dismiss the modal when shown
        $("#myModal a.btn").on("click", function(e) {
            console.log("button pressed");   // just as an example...
            $("#myModal").modal('hide');     // dismiss the dialog
        });
    });
    $("#myModal").on("hide", function() {    // remove the event listeners when the dialog is dismissed
        $("#myModal a.btn").off("click");
    });
    
//     $("#myModal").on("hidden", function() {  // remove the actual elements from the DOM when fully hidden
//         $("#myModal").remove();
//     });
    
    $("#myModal").modal({                    // wire up the actual modal functionality and show the dialog
      "backdrop"  : "static",
      "keyboard"  : true,
      "show"      : true                     // ensure the modal is shown immediately
    });
}
</script>
<style type="text/css">
table{
	width: 80%;
	margin-left:auto; 
    margin-right:auto;
/*   	width: 100%; */
/*   	height: 23px; */
}
.section-pro {
	height:200px;
	float: left;
  	margin: 1px 25px;  
  	margin-top: -50px;
  	margin-bottom: 35px;  
/*  		margin-left: 20px;  */
/*  		margin-right: 20px;  */
	}
</style>
</head>
<body>
<div style="text-align: right; margin-right: 200px; margin-top:3px;">
	<form class="form-search">
    <div class="input-append">
        	<img src="./images/Search-icon.png" border="0"/> <input type="text" class="span3 search-query">
        <button type="submit" class="btn">Search</button>
    </div>
</form>
</div>

<table>
<tr><td>
<div>
<c:if test="${!empty listBook}">
<c:forEach items="${listBook}" var="book">
<section class="section-pro">
<ul class="thumbnails">
  <li class="span2">
    <div class="thumbnail" style="text-align: center; padding: 10px;">
       <a href="BookSrvl?showBookDetail&isbn=${book.isbn}">
       	<img src="./images/${book.isbn}.gif" border="0"/>
       </a>
    </div><br/>
    <div class="#"><c:out value="${book.title}" /></div>
	<div class="#"><c:out value="${book.price}" /></div>
  </li>
</ul>
</section>
</c:forEach>
</c:if>
</div>
</td></tr>
<tr><td>
	<nav>
	<ul class="pagination">
<!-- 	previous -->
	<c:choose>
		<c:when test="${currentPage != 1}">
			<li><a href="BookSrvl?showAllBook&currentPage=${currentPage - 1}" >&laquo;</a></li>
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
				<li><a id="pageLink" href="BookSrvl?showAllBook&currentPage=${i}" >${i}</a></li>
			</c:otherwise>
			</c:choose>
		</c:forEach>
<!-- 		next -->
		<c:choose>
		<c:when test="${currentPage lt noOfPages}">
			<li><a href="BookSrvl?showAllBook&currentPage=${currentPage + 1}" >&raquo;</a></li>
		</c:when>
		<c:otherwise>
			<li class="disabled"><a href="#" style="cursor:no-drop;">&raquo;</a></li>
				</c:otherwise>
		</c:choose>
	</ul>
	</nav>
</td></tr>
</table>

<div class="modal fade" id="basicModal" tabindex="-1" role="dialog" aria-labelledby="basicModal" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&amp;times;</button>
            <h4 class="modal-title" id="myModalLabel">Modal title</h4>
            </div>
            <div class="modal-body">
                <h3>Modal Body</h3>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary">Save changes</button>
        </div>
    </div>
  </div>
</div>

<div id="myModal" class="modal fade">
  <div class="modal-dialog">
    <div class="modal-content">
<!-- dialog body -->
      <div class="modal-body">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
	<!--todo -->
		
      </div>
<!-- dialog buttons -->
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>
</body>
</html>