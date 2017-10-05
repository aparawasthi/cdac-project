<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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

<title>User Panel</title>
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

      <div class="col-md-3 col-sm-3 col-xs-6" ><a class="navbar-brand" href="userPanel">Home</a></div>
      <div class="col-md-3 col-sm-3 col-xs-6" ><a class="navbar-brand" href="requestList">My Requests</a></div>
      <div class="col-md-3 col-sm-3 col-xs-6" ><a class="navbar-brand " href="myProfile">My Profile</a></div>
      <div class="col-md-3 col-sm-3 col-xs-6" ><a class="navbar-brand" href="placeRequest">File Request</a></div>
  
	</div>
	</nav>
	</div>
	
<div class="container" style="margin-top:160px; padding-top:10px;padding-bottom:20px">
	<div class="container"">
  <h2 class="text-center" style="color:#398ea8">My Profile</h2> 
  <br>
  </div>
  <br>
  <div class="col-md-offset-9 col-md-2 col-sm-3 col-xs-4"><a href="update"><button type="submit" class="btn button btn-link">Change password</button></a></div>
  <br><br>
  
    <div class="row">
      <div class="col-sm-offset-4 col-sm-2"><label class="control-label ">Name</label></div>
      <div class="col-sm-4"><label class="control-label" for="name">${sessionScope.currentUser.name}</label></div>
    </div><br>
	
	<div class="row">
      <div class="col-sm-offset-4 col-sm-2"><label class="control-label ">Address</label></div>
      <div class="col-sm-4"><label class="control-label" for="address">${sessionScope.currentUser.address}</label></div>
    </div><br>
	
	<div class="row">
      <div class="col-sm-offset-4 col-sm-2"><label class="control-label ">Contact Number</label></div>
      <div class="col-sm-4"><label class="control-label" for="contact">${sessionScope.currentUser.contactNo}</label></div>
    </div><br>
	
	<div class="row">
      <div class="col-sm-offset-4 col-sm-2"><label class="control-label ">Email</label></div>
      <div class="col-sm-4"><label class="control-label" for="email">${sessionScope.currentUser.email}</label></div>
    </div><br><br><br>

            
      <div class="col-sm-offset-6 col-sm-6">
        <a href="editProfile"><button type="button" class="btn btn-default" style="background-color:#398ea8; color:#ffffff">Edit</button></a>
      </div></div>
    
    <div id="bottom" class="container">&copy Gadget Doctor</div>
    </div>
</body>
</html>