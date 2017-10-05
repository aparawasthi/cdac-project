<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head> 
<link rel="stylesheet" href="../bootstrap/css/bootstrap.min.css">
<style>
.button{
color:#21080e;
font-size:18px;
}

#top {
  position: fixed;
  top: 0;
  z-index: 999;
  width: relative;
  height:160px;
  background-color:#c2cfd3;
}

#bottom {
  position: fixed;
  bottom: 0;
  z-index: 999;
  width: relative;
  height:30px;
  background-color:#c2cfd3;
}

  </style>

   	 <meta charset="utf-8"> 
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Requests</title>
</head>
<body style="background-color:#dce2e2">
<div class="container">
<div id="top" class="container">
	
	<div class="row">
		<div class="col-md-3 col-sm-4 col-xs-12"><a href="userPanel"><img src="../img/Logo.png"/></a></div>
		<div class="col-md-offset-7 col-md-2 col-sm-3 col-xs-4" style="margin-top:20px"><a href="logout"><button type="submit" class="btn button btn-link">LogOut</button></a></div>	
	</div>
	
	<nav class="navbar navbar-inverse container-fluid" >
	  
    <div class="row">

      <div class="col-md-3 col-sm-3 col-xs-6" ><a class="navbar-brand" href="agentPanel">Home</a></div>
      <div class="col-md-3 col-sm-3 col-xs-6" ><a class="navbar-brand" href="agentProfile">Agent Profile</a></div>
      <div class="col-md-3 col-sm-3 col-xs-6" ><a class="navbar-brand " href="list">View Requests</a></div>
      <div class="col-md-3 col-sm-3 col-xs-6" ><a class="navbar-brand" href="update" >Change Password</a></div>
  
	</div>
	</nav>
	</div>
	
	<div class="container" style="margin-top:160px; padding:30px">
	<form:form modelAttribute="request" method="post" class="form-horizontal">
	<div class="form-group" style="width:300px">
	<form:select path="status" class="form-control">
		<form:option value="" disabled="true" selected="true">--Select--</form:option>
	    <form:option value="Ready to pick">Ready to pick</form:option>
	    <form:option value="Device picked">Device picked</form:option>
	    <form:option value="Received at service center">Received at service center</form:option>
	    <form:option value="In service">In service</form:option>
	    <form:option value="Ready to deliver">Ready to deliver</form:option>
	    <form:option value="Delivered">Delivered</form:option>
  </form:select><br>
  <form:errors path="status" cssClass="error" />
  </div>
  
  <div class="form-group">
  	<button type="submit" class="btn btn-primary" style="color:white; font-size:18px">Update Status</button>
  </div>
	</form:form>
	</div>

<div id="bottom" class="container">&copy Gadget Doctor</div>
</div>
</body>
</html>