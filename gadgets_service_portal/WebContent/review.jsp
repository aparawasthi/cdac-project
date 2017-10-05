<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %> 
<html>
<head>
<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Reviews</title>
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
	
<div class="container" style="margin-top:160px; padding-top:60px">
<table class="table table-striped table-responsive" style="background-color:white">
<%
try {
Class.forName("com.mysql.jdbc.Driver").newInstance();
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "1234");
Statement st = conn.createStatement();
String query = "select * from request where feedback is not null limit 5";
ResultSet rs = st.executeQuery(query);
while(rs.next()){
%>
<tr><td><%=rs.getString(3)%></td></tr>
<%
}
}
catch(Exception e){
	out.print(e.getMessage());
}
%>
</table></div>

<div id="bottom" class="container">&copy Gadget Doctor</div>
</div>
</body>
</html>
