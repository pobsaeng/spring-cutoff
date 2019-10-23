<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<div class="navbar navbar-inverse navbar-fixed-top">
  <div class="container">
    <div class="navbar-header">                                   
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
        </button>
        <a class="navbar-brand" href="#">Tutorials</a>
        </div>
        <div class="navbar-collapse collapse">  
          <ul class="nav navbar-nav">
            <li><a href="<c:url value="/"/>"><spring:message code="nav.home"/></a></li>
            <li><a href="<c:url value="#"/>"><spring:message code="nav.tutorials"/></a></li>
            <li><a href="<c:url value="/bookController/bookList?currentPage=${currentPage}" />"><spring:message code="nav.books"/></a></li>
            <li><a href="<c:url value="/bookController/bookForm"/>"><spring:message code="nav.add.book"/></a></li>
            <li><a href="<c:url value="/helloWorld"/>"><spring:message code="nave.webboard"/></a></li>
            <li><a href="<c:url value="/admin"/>">admin</a></li>
            <li><a href="<c:url value="/guest"/>">guest</a></li>
            <li class="dropdown">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown"><spring:message code="nav.language"/><b class="caret"></b></a>
					<ul class="dropdown-menu">
						<li><a href="?lang=th"><spring:message code="nav.th.language"/></a></li>
						<li class="divider"></li>
						<li><a href="?lang=en"><spring:message code="nav.en.language"/></a></li>
					</ul>
				</li>
          </ul>
          
           <div class="col-sm-2 col-md-3 pull-right">
            <form class="navbar-form" role="search">
                <div class="input-group">
                    <input type="text" class="form-control" placeholder="Search" name="q">
                    <div class="input-group-btn">
                        <button class="btn btn-default" type="submit"><i class="#"></i><img src="../images/Search-icon.png" height="18" width="18"/></button>
                    </div>
                </div>
            </form>
        </div>     
        </div>   			      		 
  </div>
</div>
<br/>