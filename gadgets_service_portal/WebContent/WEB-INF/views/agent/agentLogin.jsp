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
.error{
color:red;
font-size:12px;
}
</style>
	
<title>Agent Login</title>
</head>
<body style="background-color:#dce2e2">
<div class="container">

<div id="top" class="container">
	
	<div class="row">
		<div class="col-md-3 col-sm-4 col-xs-12"><a href="../index.jsp"><img src="../img/Logo.png"/></a></div>
		<div class="col-md-offset-5 col-md-2 col-sm-3 col-xs-4" style="margin-top:20px"><a href="${pageContext.servletContext.contextPath}/user/login"><button type="submit" class="btn button btn-link">User Login</button></a></div>
		<div class="col-md-2 col-sm-2 col-xs-4" style="margin-top:20px"><a href="${pageContext.servletContext.contextPath}/user/signup"><button type="submit" class="btn button btn-link">User SignUp</button></a></div>			
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

<div class="container" style="margin-top:160px; padding-top:50px">
			<div class="container-fluid">
  <h3 class="text-center" style="color:#398ea8">Agent Login</h3></div><br><br><br>
  <form:form modelAttribute="agent" method="post" class="form-horizontal">
    <div class="form-group">
      <label class="control-label col-sm-4" for="email">Email</label>
      <div class="col-sm-5">          
        <form:input path="email" class="form-control" placeholder="abc@xyz.com" /><br>
        <form:errors path="email" cssClass="error"/>
      </div>
    </div><br>
	
	<div class="form-group">
      <label class="control-label col-sm-4" for="pwd">Password</label>
      <div class="col-sm-5">          
        <form:password path="password" class="form-control" placeholder="Enter password" /><br>
        <form:errors path="password" cssClass="error"/>
      </div>
    </div><br>
	 <label class="control-label col-sm-4 error" for="error">${login_error}</label>
    <div class="form-group">        
      <div class="col-sm-offset-4 col-sm-8">
        <button type="submit" class="btn btn-default" style="background-color:#398ea8; color:#ffffff">Login</button>
      </div>
    </div>
  </form:form>
			</div>
		<div id="bottom" class="container">&copy Gadget Doctor</div>	
</div>
</body>
</html>