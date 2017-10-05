<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
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

      <div class="col-md-3 col-sm-3 col-xs-6" ><a class="navbar-brand" href="userPanel">Home</a></div>
      <div class="col-md-3 col-sm-3 col-xs-6" ><a class="navbar-brand" href="requestList">My Requests</a></div>
      <div class="col-md-3 col-sm-3 col-xs-6" ><a class="navbar-brand " href="myProfile">My Profile</a></div>
      <div class="col-md-3 col-sm-3 col-xs-6" ><a class="navbar-brand" href="placeRequest">File Request</a></div>
  
	</div>
	</nav>
	</div>
	
<div class="container" style="margin-top:160px; margin-bottom:30px">
<div class="container">
  <h2 class="text-center" style="color:#398ea8">User Requests</h2><br></div><br>
  
	<form method="get" action="getStatus">
		<table class="table table-striped table-responsive" style="background-color:white">
			<tr>
				<th>Select</th>
				<th>Company Name</th>
				<th>Model No</th>
				<th>Problem Description</th>
				<th>Product Type</th>
				<th>Feedback</th>
			</tr>
			<c:forEach var="req" items="${requestScope.req_list}">
				<tr>
					<td><input type="radio" value="${req.id}" name="reqId"/>
					<td>${req.companyName}</td>
					<td>${req.modelNo}</td>
					<td>${req.problemDesc}</td>
					<td>${req.productType}</td>
					<td>${req.feedback}</td>
				</tr>
			</c:forEach>
		</table>
		<button type="submit" name="action" value="status" class="btn btn-primary" style="color:white; font-size:18px">Get Status</button>
		<button type="submit" name="action" value="feedback" class="btn btn-primary" style="color:white; font-size:18px">Give Feedback</button>
	</form>
	<br>
	<label class="control-label col-sm-4" style="color:#398ea8" for="status">Status : ${requestScope.req_status}</label>
	</div>
	<label class="control-label col-sm-4" style="color:#398ea8" for="status">${requestScope.feedback_status}</label>
	<div id="bottom" class="container">&copy Gadget Doctor</div>
	</div>
</body>
</html>