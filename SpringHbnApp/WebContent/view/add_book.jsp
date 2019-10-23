<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title></title>
<script type="text/javascript">
function clearForm(){
	document.getElementById("title").value ='';
	document.getElementById("authors").value ='';
	document.getElementById("price").value ='';
	document.getElementById("stock").value ='';
	document.getElementById("photoCover").value ='';
    this.reset();
	return false;
}

$(document).ready(function() {
   $('input[id=lefile]').change(function() {
	  $('#photoCover').val($(this).val());
   });
});
</script>
</head>
    <body>
    <br/>
<!--     <table> -->
<!--     <tr> -->
<!--     	<td><div class="control-group"> -->
<!-- 		<label class="control-label">Name</label> -->
<!-- 			<div class="controls"> -->
<%-- 			<input type="text" name="title" value="<c:out value="${book.title}"/>" placeholder="" id="title"/> --%>
<!-- 		</div> -->
<!-- 		</div></td> -->
<!--     	<td><div class="control-group"> -->
<!-- 		<label class="control-label">Name</label> -->
<!-- 			<div class="controls"> -->
<%-- 			<input type="text" name="title" value="<c:out value="${book.title}"/>" placeholder="" id="title"/> --%>
<!-- 		</div> -->
<!-- 		</div></td> -->
<!--     </tr> -->
<!--     </table> -->
    <div style="margin: 0 auto; width:100%;">
		<div class="container">
        <form action="BookSrvl?addBook" method="post" enctype="multipart/form-data"  class="form-horizontal">
        <div class="control-group">
		<label class="control-label">Name</label>
			<div class="controls">
			<input type="text" name="title" value="<c:out value="${book.title}"/>" placeholder="" id="title"/>
		</div>
		</div>
		
		<div class="control-group">
		<label class="control-label">Author</label>
			<div class="controls">
			<input type="text" name="authors" value="<c:out value="${book.authors}"/>" placeholder="" id="authors"/>
		</div>
		</div>
		
		<div class="control-group">
		<label class="control-label">Price</label>
			<div class="controls">
			<input type="text" name="price" value="<c:out value="${book.price}"/>" placeholder="" id="price"/>
		</div>
		</div>
		
		<div class="control-group">
		<label class="control-label">Amount</label>
			<div class="controls">
			<input type="text" name="stock" value="<c:out value="${book.stock}"/>" placeholder="" id="stock"/>
		</div>
		</div>

		<div class="control-group">
		<div class="control" style="margin-left: 160px;">
			<input type="file" name="picture" id="lefile" style="display:none">
		<div class="input-append">
			<input id="photoCover" class="input-large" type="text">
		<a class="btn" onclick="$('input[id=lefile]').click();">Browse</a>
		</div>
		</div>
		</div>
		
		<div class="controls">
			<input type="submit" value="Add" class="btn btn-default"/>
			<input type="button" value="Clear" class="btn btn-default" onclick="clearForm()"/>
		</div>
        </form>
        </div>
      </div>
      
      
<!--       <div class="container"> -->
<!-- 			<div class="col-md-6"> -->
<!-- 				<div class="panel panel-success"> -->
<!-- 					<div class="panel-heading"> -->
<!-- 						<h3 class="panel-title">sdfdsfs</h3> -->
<!-- 						<div class="pull-right"> -->
<!-- 							<span class="clickable filter" data-toggle="tooltip" title="Toggle table filter" data-container="body"> -->
<!-- 								<i class="glyphicon glyphicon-filter"></i> -->
<!-- 							</span> -->
<!-- 						</div> -->
<!-- 					</div> -->
					
<!-- 					<div class="panel-body"> -->
<!-- 						sdfds<input type="text" class="form-control" id="task-table-filter" data-action="filter" data-filters="#task-table" placeholder="Filter Tasks" /> -->
<!-- 					</div> -->
<!-- 					<table class="table table-bordered" id="dev-table"> -->
<!-- 						<thead> -->
<!-- 							<tr class="btn-success"> -->
<!-- 								<th>#</th> -->
<!-- 								<th>Task</th> -->
<!-- 								<th>Assignee</th> -->
<!-- 								<th>Status</th> -->
<!-- 							</tr> -->
<!-- 						</thead> -->
<!-- 						<tbody> -->
<!-- 							<tr> -->
<!-- 								<td>1</td> -->
<!-- 								<td>Site Wireframes</td> -->
<!-- 								<td>John Smith</td> -->
<!-- 								<td>in progress</td> -->
<!-- 							</tr> -->
<!-- 							<tr> -->
<!-- 								<td>2</td> -->
<!-- 								<td>Mobile Landing Page</td> -->
<!-- 								<td>Kilgore Trout</td> -->
<!-- 								<td>completed</td> -->
<!-- 							</tr> -->
<!-- 							<tr> -->
<!-- 								<td>3</td> -->
<!-- 								<td>Add SEO tags</td> -->
<!-- 								<td>Bob Loblaw</td> -->
<!-- 								<td>failed qa</td> -->
<!-- 							</tr> -->
<!-- 							<tr> -->
<!-- 								<td>4</td> -->
<!-- 								<td>Migrate to Bootstrap 3</td> -->
<!-- 								<td>Emily Hoenikker</td> -->
<!-- 								<td>in progress</td> -->
<!-- 							</tr> -->
<!-- 							<tr> -->
<!-- 								<td>5</td> -->
<!-- 								<td>Update jQuery library</td> -->
<!-- 								<td>Holden Caulfield</td> -->
<!-- 								<td>deployed</td> -->
<!-- 							</tr> -->
<!-- 							<tr> -->
<!-- 								<td>6</td> -->
<!-- 								<td>Issues in IE7</td> -->
<!-- 								<td>Jane Doe</td> -->
<!-- 								<td>failed qa</td> -->
<!-- 							</tr> -->
<!-- 							<tr> -->
<!-- 								<td>7</td> -->
<!-- 								<td>Bugs from Sprint 14</td> -->
<!-- 								<td>Kilgore Trout</td> -->
<!-- 								<td>completed</td> -->
<!-- 							</tr> -->
<!-- 						</tbody> -->
<!-- 					</table> -->
<!-- 				</div> -->
<!-- 			</div> -->
<!-- 		</div> -->


<div class="container">
	<div class="row">
		
        
        <div class="col-md-12">
        <h4>Bootstrap Snipp for Datatable</h4>
        <div class="table-responsive">

                
              <table id="mytable" class="table table-bordered">
                   
                   <thead class="btn-success">
                   
                   <th ><input type="checkbox" id="checkall" /></th>
                   <th>First Name</th>
                    <th>Last Name</th>
                     <th>Address</th>
                     <th>Email</th>
                     <th>Contact</th>
                      <th>Edit</th>
                      
                       <th>Delete</th>
                   </thead>
    <tbody>
    
    <tr >
    <td><input type="checkbox" class="checkthis" /></td>
    <td>Mohsin</td>
    <td>Irshad</td>
    <td>CB 106/107 Street # 11 Wah Cantt Islamabad Pakistan</td>
    <td>isometric.mohsin@gmail.com</td>
    <td>+923335586757</td>
    <td><p data-placement="top" data-toggle="tooltip" title="Edit"><button class="btn btn-primary btn-xs" data-title="Edit" data-toggle="modal" data-target="#edit" ><span class="glyphicon glyphicon-pencil"></span></button></p></td>
    <td><p data-placement="top" data-toggle="tooltip" title="Delete"><button class="btn btn-danger btn-xs" data-title="Delete" data-toggle="modal" data-target="#delete" ><span class="glyphicon glyphicon-trash"></span></button></p></td>
    </tr>
    
 <tr>
    <td><input type="checkbox" class="checkthis" /></td>
    <td>Mohsin</td>
    <td>Irshad</td>
    <td>CB 106/107 Street # 11 Wah Cantt Islamabad Pakistan</td>
    <td>isometric.mohsin@gmail.com</td>
    <td>+923335586757</td>
    <td><p data-placement="top" data-toggle="tooltip" title="Edit"><button class="btn btn-primary btn-xs" data-title="Edit" data-toggle="modal" data-target="#edit" ><span class="glyphicon glyphicon-pencil"></span></button></p></td>
    <td><p data-placement="top" data-toggle="tooltip" title="Delete"><button class="btn btn-danger btn-xs" data-title="Delete" data-toggle="modal" data-target="#delete" ><span class="glyphicon glyphicon-trash"></span></button></p></td>
    </tr>
    
    
 <tr>
    <td><input type="checkbox" class="checkthis" /></td>
    <td>Mohsin</td>
    <td>Irshad</td>
    <td>CB 106/107 Street # 11 Wah Cantt Islamabad Pakistan</td>
    <td>isometric.mohsin@gmail.com</td>
    <td>+923335586757</td>
    <td><p data-placement="top" data-toggle="tooltip" title="Edit"><button class="btn btn-primary btn-xs" data-title="Edit" data-toggle="modal" data-target="#edit" ><span class="glyphicon glyphicon-pencil"></span></button></p></td>
    <td><p data-placement="top" data-toggle="tooltip" title="Delete"><button class="btn btn-danger btn-xs" data-title="Delete" data-toggle="modal" data-target="#delete" ><span class="glyphicon glyphicon-trash"></span></button></p></td>
    </tr>
    
    
    
 <tr>
    <td><input type="checkbox" class="checkthis" /></td>
    <td>Mohsin</td>
    <td>Irshad</td>
    <td>CB 106/107 Street # 11 Wah Cantt Islamabad Pakistan</td>
    <td>isometric.mohsin@gmail.com</td>
    <td>+923335586757</td>
    <td><p data-placement="top" data-toggle="tooltip" title="Edit"><button class="btn btn-primary btn-xs" data-title="Edit" data-toggle="modal" data-target="#edit" ><span class="glyphicon glyphicon-pencil"></span></button></p></td>
    <td><p data-placement="top" data-toggle="tooltip" title="Delete"><button class="btn btn-danger btn-xs" data-title="Delete" data-toggle="modal" data-target="#delete" ><span class="glyphicon glyphicon-trash"></span></button></p></td>
    </tr>
    
    
 <tr>
    <td><input type="checkbox" class="checkthis" /></td>
    <td>Mohsin</td>
    <td>Irshad</td>
    <td>CB 106/107 Street # 11 Wah Cantt Islamabad Pakistan</td>
    <td>isometric.mohsin@gmail.com</td>
    <td>+923335586757</td>
    <td><p data-placement="top" data-toggle="tooltip" title="Edit"><button class="btn btn-primary btn-xs" data-title="Edit" data-toggle="modal" data-target="#edit" ><span class="glyphicon glyphicon-pencil"></span></button></p></td>
    <td><p data-placement="top" data-toggle="tooltip" title="Delete"><button class="btn btn-danger btn-xs" data-title="Delete" data-toggle="modal" data-target="#delete" ><span class="glyphicon glyphicon-trash"></span></button></p></td>
    </tr>
    
   
    
   
    
    </tbody>
        
</table>

<div class="clearfix"></div>
<ul class="pagination pull-right">
  <li class="disabled"><a href="#"><span class="glyphicon glyphicon-chevron-left"></span></a></li>
  <li class="active"><a href="#">1</a></li>
  <li><a href="#">2</a></li>
  <li><a href="#">3</a></li>
  <li><a href="#">4</a></li>
  <li><a href="#">5</a></li>
  <li><a href="#"><span class="glyphicon glyphicon-chevron-right"></span></a></li>
</ul>
                
            </div>
            
        </div>
	</div>
</div>


<div class="modal fade" id="edit" tabindex="-1" role="dialog" aria-labelledby="edit" aria-hidden="true">
      <div class="modal-dialog">
    <div class="modal-content">
          <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span></button>
        
        <h4 class="modal-title custom_align" id="Heading">Edit Your Detail</h4>
        
        
      </div>
          <div class="modal-body">
          <div class="form-group">
        <input class="form-control " type="text" placeholder="Mohsin">
        </div>
        <div class="form-group">
        
        <input class="form-control " type="text" placeholder="Irshad">
        </div>
        <div class="form-group">
        <textarea rows="2" class="form-control" placeholder="CB 106/107 Street # 11 Wah Cantt Islamabad Pakistan"></textarea>
    
    
        
        </div>
      </div>
          <div class="modal-footer ">
        <button type="button" class="btn btn-warning btn-lg" style="width: 100%;"><span class="glyphicon glyphicon-ok-sign"></span> Update</button>
      </div>
        </div>
    <!-- /.modal-content --> 
  </div>
      <!-- /.modal-dialog --> 
    </div>
    
    
    
    <div class="modal fade" id="delete" tabindex="-1" role="dialog" aria-labelledby="edit" aria-hidden="true">
      <div class="modal-dialog">
    <div class="modal-content">
          <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span></button>
        <h4 class="modal-title custom_align" id="Heading">Delete this entry</h4>
      </div>
          <div class="modal-body">
       
       <div class="alert alert-danger"><span class="glyphicon glyphicon-warning-sign"></span> Are you sure you want to delete this Record?</div>
       
      </div>
        <div class="modal-footer ">
        <button type="button" class="btn btn-success" ><span class="glyphicon glyphicon-ok-sign"></span> Yes</button>
        <button type="button" class="btn btn-default" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span> No</button>
      </div>
        </div>
    <!-- /.modal-content --> 
  </div>
      <!-- /.modal-dialog --> 
    </div>
    </body>
</html>