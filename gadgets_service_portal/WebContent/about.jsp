<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head> 
<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
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

  #Mediator {margin-top:160px;padding-top:150px;padding-left:50px;padding-right:50px;height:450px;color: #fff; background-color: #106b87;}
  #Troubleshooter {padding-top:150px;padding-left:50px;padding-right:50px;height:450px;color: #fff; background-color: #434647;}
  #Platform {padding-top:150px;padding-left:50px;padding-right:50px;height:450px;color: #fff; background-color: #35564f;}
  </style>

   	 <meta charset="utf-8"> 
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>About us</title>
</head>
<body style="background-color:#dce2e2">
<div class="container">  

<div id="top" class="container">
	
	<div class="row">
		<div class="col-md-3 col-sm-4 col-xs-12"><a href="index.jsp"><img src="img/Logo.png"/></a></div>
		<div class="col-md-offset-3 col-md-2 col-sm-3 col-xs-4" style="margin-top:20px"><a href="user/login"><button type="submit" class="btn button btn-link">User Login</button></a></div>
		<div class="col-md-2 col-sm-3 col-xs-4" style="margin-top:20px"><a href="agent/login"><button type="submit" class="btn button btn-link">Agent Login</button></a></div>
		<div class="col-md-2 col-sm-2 col-xs-4" style="margin-top:20px"><a href="user/signup"><button type="submit" class="btn button btn-link">User SignUp</button></a></div>			
	</div>
	
	<nav class="navbar navbar-inverse container-fluid" >
	  
    <div class="row">

      <div class="col-md-2 col-sm-4 col-xs-6" ><a class="navbar-brand" href="index.jsp">Home</a></div>
      <div class="col-md-2 col-sm-4 col-xs-6" ><a class="navbar-brand" href="about.jsp">AboutUs</a></div>
      <div class="col-md-2 col-sm-4 col-xs-6" ><a class="navbar-brand " href="ourPartners.jsp">OurPartners</a></div>
      <div class="col-md-2 col-sm-4 col-xs-6" ><a class="navbar-brand" href="review.jsp" >Reviews</a></div>
	  <div class="col-md-2 col-sm-4 col-xs-6" ><a class="navbar-brand" href="offers.jsp">Offers</a></div>
	  <div class="col-md-2 col-sm-4 col-xs-6" ><a class="navbar-brand" href="contact.jsp">ContactUs</a></div>
  
	</div>
	</nav>
	</div>
	
<div class="container">
	
<div id="Mediator" class="container-fluid text-justify">
  <h2>Mediator</h2><br>
  <h4>You just hold your coffee cups! We are there to help you</h4>
  <p>We mediate throughout the service process on your behalf! You can use your precious time working, partying, or doing anything else in the world!</p>
</div>

<div id="Troubleshooter" class="container-fluid text-justify">
  <h2>Troubleshooter</h2><br>
  <h4>Having trouble? We've got guns!</h4>
  <p>No worry having troubles with your gadgets. We've got you covered. We work with the philosophy- Your trouble, our trouble!<br>Just share your issues with us!</p>
</div>

<div id="Platform" class="container-fluid text-justify">
  <h2>Platform</h2><br>
  <h4>Opportunities are there, Platform is all we need</h4>
  <p>Try to scroll this section and look at the navigation bar while scrolling! Try to scroll this section and look at the navigation bar while scrolling!</p>
</div>
</div>

<div id="bottom" class="container">&copy Gadget Doctor</div>

</div>

</body>
</html>