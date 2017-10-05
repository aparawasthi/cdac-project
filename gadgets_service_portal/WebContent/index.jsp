<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
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
</style>
   	 <meta charset="utf-8"> 
	<meta name="viewport" content="width=device-width, initial-scale=1">
<title>GadgetDoctor</title>
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
	
	<div class="container" style="margin-top:160px">
	<div style="background-image:url(img/pattern1.jpg)">
<div class="text-justify" style="padding:40px">
	<h2 style="color:#ffffff">We serve you..</h2>
	<h4 style="color:#ffffff">Come, dive in a world of ease. Get what you deserve in the name of service</h4>
</div>

<div class="container" style="padding:40px">
  <div class="well well-sm" style="text-align:center"><h2 style="color:#126287"><b>Gadget Doctor</b></h2><br><p style="text-align:right"><i>...at you doorstep</i></p></div>
  <div class="well" style="text-align:center"><h4>Services</h4></div>
  <div class="well well-lg" style="text-align:center ">
  <div class="row">
  <div class="col-md-3 col-sm-3 col-xs-12"><b>Place Request</b></div>
  <div class="col-md-3 col-sm-3 col-xs-12"><b>Cancel Request</b></div>
  <div class="col-md-3 col-sm-3 col-xs-12"><b>Track Status</b></div>
  <div class="col-md-3 col-sm-3 col-xs-12"><b>Get Assistance</b></div>
   </div>
   </div>
</div>
</div>

</div>
<div id="bottom" class="container">&copy Gadget Doctor</div>
		</div>	


</body>
</html>