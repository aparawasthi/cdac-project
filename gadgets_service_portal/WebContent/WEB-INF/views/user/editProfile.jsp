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
  </div>
  <br>
  
  <form:form modelAttribute="user" method="post" class="form-horizontal">
    <div class="form-group">
      <label class="control-label col-sm-4" for="name">Name</label>
      <div class="col-sm-5">
      <form:input path="name" class="form-control" value="${sessionScope.currentUser.name}"/>
      <form:errors path="name" cssClass="error"/>
      </div>
    </div><br>
	
    <div class="form-group">
      <label class="control-label col-sm-4" for="address">Address</label>
      <div class="col-sm-5">
      <form:input path="address" class="form-control" value="${sessionScope.currentUser.address}"/>
      <form:errors path="address" cssClass="error"/>
      </div>
    </div><br>
    
    <div class="form-group">
      <label class="control-label col-sm-4" for="contactNo">Contact Number</label>
      <div class="col-sm-5">
      <form:input path="contactNo" class="form-control" value="${sessionScope.currentUser.contactNo}"/>
      <form:errors path="contactNo" cssClass="error"/>
      </div>
    </div><br>
    
    <div class="form-group">
      <label class="control-label col-sm-4" for="email">Email</label>
      <div class="col-sm-5">
      <form:input path="email" class="form-control" value="${sessionScope.currentUser.email}"/>
      <form:errors path="email" cssClass="error"/>
      </div>
    </div><br>
    
<div class="form-group">        
      <div class="col-sm-offset-4 col-sm-8">
        <button type="submit" class="btn btn-default" style="background-color:#398ea8; color:#ffffff">Update</button>
      </div>
    </div>
    </form:form>
    </div>
    
    <div id="bottom" class="container">&copy Gadget Doctor</div>
    </div>
</body>
</html>