<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator" prefix="decorator" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <title>Spring-MVC</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="">
  <meta name="author" content="">
  <link href="<c:url value="/resources/css/bootstrap.min.css" />" rel="stylesheet"  type="text/css" />  
  <link href="<c:url value="/resources/css/main.css" />" rel="stylesheet"  type="text/css" />    
</head>

<body>

    <div id="wrap">
        
        <c:import url="/WEB-INF/template/admin_navbar.jsp"/>        
        
        <div class="container">
            <div class="row">    
            
                <div class="col-md-11 col-md-offset-1">         
                    <div class="#">
                      <c:import url="/WEB-INF/template/admin_banner.jsp"/>       
                    </div>
                    
                    <div class="row">
                      <div class="col-md-11">
                      
                          <div class="container">
                            <script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0];if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src="//platform.twitter.com/widgets.js";fjs.parentNode.insertBefore(js,fjs);}}(document,"script","twitter-wjs");</script>                      
                          </div>
                          <br/>
<!--                         <hr class="soften"> -->
             
                        <decorator:body />
                        
                      </div> <!--/col-->     
                                   
                    </div> <!--/row-->
                    
                </div> <!--/col-->  
                               
            </div> <!--/row-->
          </div> <!--/container-->
            
          <!--<hr class="soften">   -->
                                 
    </div>

    <c:import url="/WEB-INF/template/admin_footer.jsp"/>     
    
	<!-- Placed at the end of the document so the pages load faster -->
	<script type="text/javascript" src="<c:url value="/resources/js/jquery-1.8.0-min.js" />"></script>
	<script type="text/javascript" src="<c:url value="/resources/js/bootstrap.min.js" />"></script>
  	<script type="text/javascript" src="<c:url value="/resources/js/demo.js" />"></script>
	<script type="text/javascript" src="<c:url value="/resources/js/json2.js" />"></script> 
  	<script type="text/javascript" src="<c:url value="/resources/js/date.format.js" />"></script>
  	
</body>
</html>