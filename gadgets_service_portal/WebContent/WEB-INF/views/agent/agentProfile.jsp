<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
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

<title>Agent profile</title>
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
	
<div class="container" style="margin-top:160px; padding-top:10px;padding-bottom:20px">
	<div class="container"">
  <h2 class="text-center" style="color:#398ea8">My Profile</h2>
  
  <br>
  </div>
  <br><br><br>
  
    <div class="row">
      <div class="col-sm-offset-4 col-sm-2"><label class="control-label ">Name</label></div>
      <div class="col-sm-4"><label class="control-label" for="name">${sessionScope.agent.name}</label></div>
    </div><br>
	
	<div class="row">
      <div class="col-sm-offset-4 col-sm-2"><label class="control-label ">Agent ID</label></div>
      <div class="col-sm-4"><label class="control-label" for="id">${sessionScope.agent.id}</label></div>
    </div><br>
	
	<div class="row">
      <div class="col-sm-offset-4 col-sm-2"><label class="control-label ">Company</label></div>
      <div class="col-sm-4"><label class="control-label" for="companyName">${sessionScope.agent.companyName}</label></div>
    </div><br>
	
	<div class="row">
      <div class="col-sm-offset-4 col-sm-2"><label class="control-label ">Email</label></div>
      <div class="col-sm-4"><label class="control-label" for="email">${sessionScope.agent.email}</label></div>
    </div><br><br><br>

            
      <div class="col-sm-offset-6 col-sm-6">
        <a href="editProfile"><button type="button" class="btn btn-default" style="background-color:#398ea8; color:#ffffff">Edit</button></a>
      </div></div>
      
      <div id="bottom" class="container">&copy Gadget Doctor</div>
    </div>
  </body>
</html>