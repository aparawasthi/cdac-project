<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>List Request</title>
</head>
<body><head> 
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
	
	<div class="container" style="margin-top:160px; margin-bottom:30px">
<div class="container">
  <h2 class="text-center" style="color:#398ea8">User Requests</h2><br></div><br>
  
  <form method="get" action="updateStatus">
	<table class="table table-striped table-responsive" style="background-color:white">
	<tr>
				<th>Select</th>
				<th>Product</th>
				<th>Model</th>
				<th>Problem</th>
				<th>Warranty</th>
				<th>Status</th>
				<th>Feedback</th>
			</tr>
		<c:forEach var="request" items="${requestScope.req_list}">
			<tr>
				<td><input type="radio" value="${request.id}" name="reqId"/>
				<td>${request.productType}</td>
				<td>${request.modelNo}</td>
				<td>${request.problemDesc}</td>
				<td>${request.warrantyStatus}</td>
				<td>${request.status}</td>
				<td>${request.feedback}</td>
			</tr>
		</c:forEach>
	</table>
	<button type="submit" name="action" value="status" class="btn btn-primary" style="color:white; font-size:18px">Update Status</button>
	<button type="submit" name="action" value="user" class="btn btn-primary" style="color:white; font-size:18px">Get User Details</button>
	</form>
	<br>
	<div class="container-fluid">
	<table class="table table-striped table-responsive" style="background-color:white">
	<tr>
				<th>Name</th>
				<th>Email</th>
				<th>Contact No.</th>
				<th>Address</th>
			</tr>
		<tr>
			<td>${requestScope.user.name}</td>
			<td>${requestScope.user.email}</td>
			<td>${requestScope.user.contactNo}</td>
			<td>${requestScope.user.address}</td>
		</tr>
	</table></div>
	</div>
	
	<div id="bottom" class="container">&copy Gadget Doctor</div>
	</div>
</body>
</html>