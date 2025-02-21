<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>DATA OWNER Login</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-titillium-250.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<style type="text/css">
<!--
.style1 {
	font-size: 36px; /* Increased font size */
	font-weight: bold;
	font-style: italic;
}
.style2 {
	font-weight: bold;
	font-style: italic;
}
.style3 {color: #FF0000}

.style5 {color:black; font-weight: bold; }
input[type=text], input[type=password] { 
	width: 100%;
	padding: 10px; /* Adjust padding */
	margin: 8px 0;
	box-sizing: border-box;
	border: 3px solid #ccc;
	transition: 0.5s;
	outline: none;
}

input[type=submit], input[type=reset] {
	background-color: green;
	border: none;
	color: white;
	font-size: 28px ;
        font-weight:bold;
        border-radius:10px;
        
	padding: 10px 20px; /* Adjust padding */
	margin: 8px 2px; /* Adjust margin */
	cursor: pointer;
}

input[type=text], input[type=password]:focus {
	border: 4px solid #555;
 font-size:32px;
}

fieldset {
font-size:25px;
	margin-bottom: 20px; /* Add space between fieldsets */
	padding: 20px; /* Increase size of fieldset */
width:550px;
}

-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="logo">
       <h1><a href="index.html" class="style1">A Personal Privacy Data Protection scheme for Encryption  <br />
        And Revocation of High Dimensional Attribute Domain</a></h1>
      </div>
      <div class="menu_nav">
        <ul>
          <li><a href="index.html"><span>Home </span></a></li>
          <li class="active"><a href="DO_Login.jsp"><span>DATA OWNER</span></a></li>
          <li><a href="DU_Login.jsp">END DATA OWNER </a><a href="about.html"></a></li>
          <li><a href="C_Login.jsp"><span>CLOUD SERVICE PROVIDERS</span></a></li>
          <li><a href=""></a></li>
        </ul>
      </div>
      <div class="clr"></div>
      <div class="slider">
        <div id="coin-slider"> <a href="#"><img src="images/slide1.jpg" width="960" height="360" alt="" /></a> <a href="#"><img src="images/slide2.jpg" width="960" height="360" alt="" /></a> <a href="#"><img src="images/slide3.jpg" width="960" height="360" alt="" /></a> </div>
        <div class="clr"></div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
          <h2><span>DATA OWNER Login </span></h2>
          <p><img src="images/Login.jpg" width="158" height="158" /></p>
          <form action="DO_Authentication.jsp" method="post" id="leavereply">
            <fieldset>
              <legend>Login Information</legend>
              <label for="name"><span class="style5">Name (required)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></label>
              <input name="userid" type="text" class="box" id="name" value="" />
              <label for="pass"><span class="style5">Password (required)&nbsp;</span></label>
              <input type="password" id="pass" name="pass" class="box" />
            </fieldset>
            <p>
              <input name="imageField" type="submit" class="LOGIN" id="imageField" value="Login" />
              <input type="reset" name="imageField" id="imageField" class="RESET" />
            </p>
            <p><span class="style5">New Data Owner? Click here to</span> <a href="DO_Register.jsp"><span class="style5">Register</span></a></p>
          </form>
          <p class="infopost">&nbsp;</p>
         
        </div>
      </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star">Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu style2">
            <li><a href="index.html">Home</a></li>
            <li><a href="C_Login.jsp">CLOUD SERVICE PROVIDERS</a></li>
            <li><a href="DU_Login.jsp">END DATA OWNER </a></li>
            <li><a href="DO_Login.jsp">DATA OWNER</a></li>
          </ul>
        </div>
        <div class="gadget">
          <h2 class="star">&nbsp;</h2>
        </div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="footer">
    <div class="footer_resize">
      <p class="lf">&nbsp;</p>
      <p class="rf">&nbsp;</p>
      <div style="clear:both;"></div>
    </div>
  </div>
</div>
<div align=center></div>
</body>
</html>
