<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="utf-8">
  	<meta name="viewport" content="width=device-width, initial-scale=1">
  	<link rel="stylesheet" href="../bootstrap/css/bootstrap.min.css">
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Update Agent</title>
</head>
<body>
	<form:form modelAttribute="agent" method="post" class="form-horizontal">
		<br><br><br>
	    <div class="form-group">
	      <label class="control-label col-sm-4" for="name">Name</label>
	      <div class="col-sm-5">
	        <form:input path="name" class="form-control" placeholder="Enter name" /><br>
	        <form:errors path="name" cssClass="error"/>
	      </div>
	    </div><br>
	    
	    <div class="form-group">
	      <label class="control-label col-sm-4" for="name">Company Name</label>
	      <div class="col-sm-5">
	        <form:input path="companyName" class="form-control" placeholder="Enter Company name" /><br>
	        <form:errors path="companyName" cssClass="error"/>
	      </div>
	    </div><br>
	    
	     <div class="form-group">
	      <label class="control-label col-sm-4" for="name">Email</label>
	      <div class="col-sm-5">
	        <form:input path="email" class="form-control" placeholder="Enter Email" /><br>
	        <form:errors path="email" cssClass="error"/>
	      </div>
	    </div><br>
	    
	     <div class="form-group">
	      <label class="control-label col-sm-4" for="name">Default Password</label>
	      <div class="col-sm-5">
	        <form:input path="password" class="form-control" placeholder="Enter Password" /><br>
	        <form:errors path="password" cssClass="error"/>
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