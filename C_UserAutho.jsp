<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
	<%@page import ="java.util.*"%>
<%@ include file="connect.jsp" %>
    <%@page import ="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec,org.bouncycastle.util.encoders.Base64"%>
    <%@ page import="java.sql.*,java.util.Random,java.io.PrintStream,java.io.FileOutputStream,java.io.FileInputStream,java.security.DigestInputStream,java.math.BigInteger,java.security.MessageDigest,java.io.BufferedInputStream" %>
<%@ page import ="java.security.Key,java.security.KeyPair,java.security.KeyPairGenerator,javax.crypto.Cipher"%>
 <%@page import ="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>CLOUD SERVICE PROVIDERS </title>
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
.style21 {font-size: 18px}
.style24 {color: #FFFFFF}
.style27 {
	font-size: 24px;
	font-weight: bold;
	font-style: italic;
}
.style28 {font-size: 18px; color: #FFFFFF; font-weight: bold; }
.style29 {color: #FF0000}
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
          <li><a href="C_Main.jsp">CLOUD SERVICE PROVIDERS</a></li>
          <li><a href="C_Login.jsp"><span>Logout </span></a></li>
          <li></li>
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
          <h2><span>Authorize  Users </span></h2>
          <p>&nbsp;</p>
          <table width="500" border="2" cellpadding="4" cellspacing="1"  align="center">
            <tr>
              <td width="108" height="30" bgcolor="#0000FF"><div align="center" class="style21 style24"><strong>User ID </strong></div></td>
              <td width="183" bgcolor="#0000FF"><div align="center" class="style28">Users Name </div></td>
              <td width="171" bgcolor="#0000FF"><div align="center" class="style28"> Status </div></td>
              <%	  
			  
			  
	String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8,s9="",s10,s11,s12,s13;
	int i=0,j=0,k=0;
      	try 
	{
      		String query="select * from user "; 
           Statement st=connection.createStatement();
           ResultSet rs=st.executeQuery(query);
	while ( rs.next() )
	   {
		i=rs.getInt(1);
		s2=rs.getString(2);
		s5=rs.getString(12);
		%>
            </tr>
            <tr>
              <td height="28"><div align="center" class="style29"><%=i%></div></td>
              <td><div align="center" class="style29"><a href="C_UserDetails.jsp?name=<%=s2%>"><%=s2%></a></div></td>
              <%	
			if(s5.equalsIgnoreCase("Waiting"))
			{
			
		%>
              <td><div class="style29">
                  <div align="center"><a href="C_StatusUser.jsp?id=<%=i%>"><%=s5%></a></div>
              </div></td>
              <%
		
			}else
			{
		%>
              <td width="28"><div class="style29">
                  <div align="center"><%=s5%></div>
              </div></td>
            </tr>
            <%
			  }
	  }
           connection.close();
          }
         
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
%>
          </table>
          <p align="right" class="infopost"><a href="C_Main.jsp">Back</a></p>
          <div class="clr"></div>
        </div>
      </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star">Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
          <li><a href="C_Main.jsp">Home</a></li>
          <li><a href="C_Login.jsp">Logout</a></li>
          </ul>
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
