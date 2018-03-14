<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Create Product Page</title>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
</head>
<body>
	<script type="text/javascript" src="<c:url value="js/local.js" />" ></script>
	<div class="container">
		 <div id="legend" style="margin-top:50px">
	      <legend class="">Register</legend>
	    </div>
	    <div class="messages">
	    		<div class="alert alert-success" id="successId" style="display:none">
			  <strong>Success!</strong> Product is successfully created.
			</div>
			<div class="alert alert-danger" id="errorId" style="display:none">
			  <strong>Error!</strong> Product is not created.
			</div>
	    </div>
	    
	    <div class="jumbotron" style="margin-top:50px;font-size:14px">
	     <div class="control-group">
		     <label class="control-label"  for="Parent">Parent Product Category ID</label>
		      <div class="controls">
		        <input type="text" id="productnameId" name="productname" placeholder="" class="input-xlarge">
		      </div>
	     </div>
	     <br/>
	     <div class="control-group">
		      <!-- E-mail -->
		      <label class="control-label" for="Category">Product Category Name</label>
		      <div class="controls">
		        <input type="text" id="categoryId" name="category" placeholder="" class="input-xlarge">
	      	</div>
    		  </div>
    		  <br>
    		  <div>
    		  	<button type="button" class="btn btn-primary" id="saveId">Save</button>
    		  </div>
    		 </div>
	</div>
</body>
</html>