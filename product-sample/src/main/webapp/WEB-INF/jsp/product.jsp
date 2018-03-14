<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Browse Product Page</title>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container">
		
    		<table class="table table-condensed">
		    <thead>
		        <tr>
		            <th>Product Name</th>
		            <th>Product Category</th>
		        </tr>
		    </thead>
			    <tbody>
			
			    		<c:forEach var="prod" items="${productList}">
			   			<tr>
				  			 <td>${prod.productname}</td>
				  			 <td>${prod.categoryname}</td>
				        </tr>
			    		</c:forEach>
			    </tbody>
			</table>
	</div>
	
</body>
</html>