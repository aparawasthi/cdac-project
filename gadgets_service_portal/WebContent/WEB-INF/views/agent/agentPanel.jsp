<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="../bootstrap/css/bootstrap.min.css">
   	 <meta charset="utf-8"> 
	<meta name="viewport" content="width=device-width, initial-scale=1">

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

<title>Agent Panel</title>
</head>
<body style="background-color:#dce2e2">
<div class="container">
	
	<div id="top" class="container">
	
	<div class="row">
		<div class="col-md-3 col-sm-4 col-xs-12"><a href="agentPanel"><img src="../img/Logo.png"/></a></div>
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
	<label class="control-label col-sm-4" for="status">${update_status}</label>
	<div id="bottom" class="container">&copy Gadget Doctor</div>
	
	</div>
</body>
</html>