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
<title>DATA OWNER</title>
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
.style23 {
	font-size: 24px;
	font-weight: bold;
	font-style: italic;
}
.style24 {font-size: 14px; font-weight: bold; color: #FFFF00; }
.style25 {color: #FF0000}
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
          <li class="active"><a href="DO_Main.jsp"><span>DATA OWNER</span></a></li>
          <li><a href="DO_Login.jsp">Logout</a></li>
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
          <h2>Transactions On Files </h2>
          <p class="infopost">&nbsp;</p>
          <table width="615" border="2" cellpadding="0" style="border-collapse:collapse" cellspacing="0" align="center">
            <tr>
              <td width="49" height="31" bgcolor="#FF0000"><div align="center" class="style24"> ID </div></td>
              <td width="102" bgcolor="#FF0000"><div align="center" class="style24">User Name </div></td>
              <td width="119" bgcolor="#FF0000"><div align="center" class="style24">File Name </div></td>
              <td width="170" bgcolor="#FF0000"><div align="center" class="style24">Task</div></td>
              <td width="161" bgcolor="#FF0000"><div align="center" class="style24">Date &amp; Time</div></td>
            </tr>
            <%

	
	String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8,s9="",s10,s11,s12,s13;
	int i=0,j=0,k=0;

	try 
	{
	
	
		String dname=(String)application.getAttribute("doname"); 
		
		String query1="select * from cloudserver where downer='"+dname+"' "; 
		Statement st1=connection.createStatement();
		ResultSet rs1=st1.executeQuery(query1);
		while ( rs1.next() )
		{
		
			String fname=rs1.getString(2);     		 
			
			String query="select * from Transaction where fname='"+fname+"' "; 
			Statement st=connection.createStatement();
			ResultSet rs=st.executeQuery(query);
			while ( rs.next() )
			{
				i=rs.getInt(1);
				s3=rs.getString(2);
				s4=rs.getString(3);
				s5=rs.getString(4);
				s6=rs.getString(5);
				
				
				%>
				<tr>
				<td height="29"><div align="center" class="style25"><%=i%></div></td>
				<td><div align="center" class="style25"><%=s3%></div></td>
				<td><div align="center" class="style25"><%=s4%></div></td>
				<td><div align="center" class="style25"><%=s5%></div></td>
				<td><div align="center" class="style25"><%=s6%></div></td>
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
          <p>&nbsp;</p>
          <p align="right"><a href="DO_Main.jsp">Back</a></p>
        </div>
      </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star">Menu</h2>
          <div class="clr"></div>
         <ul class="sb_menu">
          <li><strong><a href="DO_Main.jsp">Home</a></strong></li>
          <li><strong><a href="DO_Attackers.jsp">Attackers</a></strong></li>
          <li><strong><a href="DO_ViewFiles.jsp">View Files</a></strong></li>
          <li><strong><a href="DO_Upload.jsp">Upload File</a></strong></li>
          <li><strong><a href="DO_Delete.jsp">Delete Files</a></strong></li>
          <li><strong><a href="DO_Login.jsp">Logout</a></strong></li>
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
