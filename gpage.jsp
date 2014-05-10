<%-- 
    Document   : gpage
    Created on : Dec 1, 2013, 2:55:43 PM
    Author     : Thanu
--%>




<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <style>
          body {
  background-image: url("images/5_1.jpg");
 }
 </style>
      <link rel='stylesheet' type='text/css' href='styles.css' />
	<script src='http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js'></script>
</head>


    <body >
 <table align="center">
       <tr>
           <td align="center"><img src="images/3_1.jpg" hight="500" width="900" ></td></table>
 
<div id='cssmenu'>
<ul>
   <li class='active'><a href='index.jsp'><span>Home</span></a></li>
   <li><a href='userview.jsp'><span>Group User Details</span></a></li>
   <li class='last'><a href='index.jsp'><span>Logout</span></a></li>
   
</ul>
</div>
         <% String name=(String)session.getAttribute("name");%>
   
        <table align="center">
        <h3><center><font color="black">Mona: Secure Multi-Owner Data Sharing for Dynamic Groups in the Cloud</h3></center>
            <center> <h2>Welcome To:<%=name%></h2></center>
       <tr>
            <td bgcolor="lightblue"><img src="images/2.gif" hight="500" width="500" ></td></table>
     
    </body>
</html>
