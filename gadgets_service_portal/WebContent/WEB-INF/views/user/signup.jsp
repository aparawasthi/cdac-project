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

<title>Sign Up</title>
</head>
<body style="background-color:#dce2e2">
<div class="container">

<div id="top" class="container">
	
	<div class="row">
		<div class="col-md-3 col-sm-4 col-xs-12"><a href="../index.jsp"><img src="../img/Logo.png"/></a></div>
		<div class="col-md-offset-5 col-md-2 col-sm-3 col-xs-4" style="margin-top:20px"><a href="login"><button type="submit" class="btn button btn-link">User Login</button></a></div>
		<div class="col-md-2 col-sm-3 col-xs-4" style="margin-top:20px"><a href="${pageContext.servletContext.contextPath}/agent/login"><button type="submit" class="btn button btn-link">Agent Login</button></a></div>	
	</div>
	
	<nav class="navbar navbar-inverse container-fluid" >
	  
    <div class="row">

      <div class="col-md-2 col-sm-4 col-xs-6" ><a class="navbar-brand" href="../index.jsp">Home</a></div>
      <div class="col-md-2 col-sm-4 col-xs-6" ><a class="navbar-brand" href="../about.jsp">AboutUs</a></div>
      <div class="col-md-2 col-sm-4 col-xs-6" ><a class="navbar-brand " href="../ourPartners.jsp">OurPartners</a></div>
      <div class="col-md-2 col-sm-4 col-xs-6" ><a class="navbar-brand" href="../review.jsp" >Reviews</a></div>
	  <div class="col-md-2 col-sm-4 col-xs-6" ><a class="navbar-brand" href="../offers.jsp">Offers</a></div>
	  <div class="col-md-2 col-sm-4 col-xs-6" ><a class="navbar-brand" href="../contact.jsp">ContactUs</a></div>
  
	</div>
	</nav>
	</div>

<div style="margin-top:160px; margin-bottom:30px" class="container">
	<div class="container">
  <h2 class="text-center" style="color:#398ea8">User Registration</h2><br></div><br>
  
  <form:form modelAttribute="user" method="post" class="form-horizontal">
    <div class="form-group">
      <label class="control-label col-sm-4" for="name">Name</label>
      <div class="col-sm-5">
        <form:input path="name" class="form-control" placeholder="Enter name" value="${signup_user.name}"/><br>
        <form:errors path="name" cssClass="error"/>
      </div>
    </div><br>
	
    <div class="form-group">
      <label class="control-label col-sm-4" for="email">Email</label>
      <div class="col-sm-5">          
        <form:input path="email" class="form-control" placeholder="abc@xyz.com" /><br>
        <form:errors path="email" cssClass="error"/>
      </div>
    </div><br>
	
	<div class="form-group">
      <label class="control-label col-sm-4" for="contact">Contact Number</label>
      <div class="col-sm-5">          
        <form:input path="contactNo" class="form-control" placeholder="Contact" value="${signup_user.contactNo}" /><br>
        <form:errors path="contactNo" cssClass="error"/>
      </div>
    </div><br>
	
	<div class="form-group">
      <label class="control-label col-sm-4" rows="5" for="address">Address</label>
      <div class="col-sm-5">          
        <form:textarea path="address" class="form-control" placeholder="Enter address" value="${signup_user.address}" /><br>
        <form:errors path="address" cssClass="error"/>
      </div>
    </div><br>
	<div class="form-group">
      <label class="control-label col-sm-4" for="pwd">Password</label>
      <div class="col-sm-5">          
        <form:password path="password" class="form-control" placeholder="Enter password" /><br>
        <form:errors path="password" cssClass="error"/>
      </div>
    </div><br>
	
	<div class="form-group">
      <label class="control-label col-sm-4" for="pwd">Confirm password</label>
      <div class="col-sm-5">          
        <input type="password" class="form-control" id="conf_pwd" placeholder="Confirm password" name="conf_pwd">
      </div>
    </div><br>
    
    <div class="form-group">        
      <div class="col-sm-offset-4 col-sm-8">
        <button type="submit" class="btn btn-default" style="background-color:#398ea8; color:#ffffff">SignUp</button>
      </div>
    </div>
  </form:form>
  <label class="control-label col-sm-4" for="error">${signup_error}</label>
</div>

<div id="bottom" class="container">&copy Gadget Doctor</div>
</div>
</body>
</html>