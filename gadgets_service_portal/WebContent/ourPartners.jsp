
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    
    <title>Our Partners</title>
    <link rel="stylesheet" type="text/css" href="bootstrap/jqcloud.css" />
    <link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css" />
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.4/jquery.js"></script>
    <script type="text/javascript" src="js/jqcloud-1.0.4.min.js"></script>
    <script type="text/javascript">
      var word_list = [
        {text: "Samsung", weight: 13},
        {text: "Whirlpool", weight: 10.5},
        {text: "IFB", weight: 9.4},
        {text: "LG", weight: 8},
        {text: "Xiaomi", weight: 6.2},
        {text: "OnePlus", weight: 5},
        {text: "Motorola", weight: 5},
        {text: "Lenovo", weight: 5},
        {text: "Hewlett Packard", weight: 5},
        {text: "Asus", weight: 4},
        {text: "Acer", weight: 4},
        {text: "Dell", weight: 3},
        {text: "Electrolux", weight: 3},
        {text: "Panasonic", weight: 3},
        {text: "Videocon", weight: 3},
        {text: "Sony", weight: 3},
        {text: "Beats Audio", weight: 3},
        {text: "Bose", weight: 3},
        {text: "Nokia", weight: 2},
        {text: "Apple", weight: 2},
        {text: "Sennheiser", weight: 2},
        {text: "HTC", weight: 2},
        {text: "OPPO", weight: 2},
        {text: "VIVO", weight: 2},
        {text: "Micromax", weight: 2},
        {text: "LeEco", weight: 2},
        {text: "Maharaja Whiteline", weight: 2},
        {text: "Crompton", weight: 2},
        {text: "Western Digital", weight: 1},
        {text: "Seagate", weight: 1},
        {text: "Huawei", weight: 1},
        {text: "HCL", weight: 1},
        {text: "IBM", weight: 1},
        {text: "BenQ", weight: 1},
        {text: "CompaQ", weight: 1},
        {text: "Toshiba", weight: 1},
        {text: "BlackBerry", weight: 1},
        {text: "Hawells", weight: 1},
        {text: "Reconnect", weight: 1},
        {text: "Usha", weight: 1},
        {text: "Epson", weight: 1},
        {text: "Canon", weight: 1}
      ];
      $(function() {
        $("#company_list").jQCloud(word_list, {shape: "rectangular"});
      });
    </script>
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
<div class="container">
    <div id="company_list" style="margin-top:160px; height: 500px; border:none; background-color:#f4f5f7"></div>
    
  <script type="text/javascript">

  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-36251023-1']);
  _gaq.push(['_setDomainName', 'jqueryscript.net']);
  _gaq.push(['_trackPageview']);

  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();

</script></div>

<div id="bottom" class="container">&copy Gadget Doctor</div>

</div>
    </body>
</html>