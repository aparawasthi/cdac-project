<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="utf-8">
  	<meta name="viewport" content="width=device-width, initial-scale=1">
  	<link rel="stylesheet" href="../bootstrap/css/bootstrap.min.css">
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Add Product</title>
</head>
<body>
	<form:form modelAttribute="product" method="post" class="form-horizontal">
		<br><br><br>
	    <div class="form-group">
	      <label class="control-label col-sm-4" for="name">Product Type</label>
	      <div class="col-sm-5">
	        <form:input path="productType" class="form-control" placeholder="Enter Product Type" /><br>
	        <form:errors path="productType" cssClass="error"/>
	      </div>
	    </div><br>
	    
	    <div class="form-group">
	      <label class="control-label col-sm-4" for="name">Model No.</label>
	      <div class="col-sm-5">
	        <form:input path="modelNo" class="form-control" placeholder="Enter Model Number" /><br>
	        <form:errors path="modelNo" cssClass="error"/>
	      </div>
	    </div><br>
	    
	    <div class="form-group">        
			<div class="col-sm-offset-4 col-sm-8">
        		<button type="submit" class="btn btn-default" style="background-color:#398ea8; color:#ffffff">Submit</button>
      		</div>
    	</div>
	</form:form>
</body>
</html>