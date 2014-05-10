<%-- 
    Document   : userkey1
    Created on : Dec 1, 2013, 3:46:56 PM
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
   <li><a href='admin.jsp'><span>Admin</span></a></li>
   <li><a href='gu.jsp'><span>Group User</span></a></li>
   <li class='last'><a href='gm.jsp'><span>Group Manager</span></a></li>
   <li class='last'><a href='signup.jsp'><span>SignUp</span></a></li>
   <li class='last'><a href='about.jsp'><span>About</span></a></li>
</ul>
</div>
   
        <h3><center><font color="black">Mona: Secure Multi-Owner Data Sharing for Dynamic Groups in the Cloud</h3></center>
            <table align="left">
       <tr>
           <td align="left"><img src="images/4.png" hight="200" width="200" ></td></tr>
           
        <form action="userkeycon.jsp" method="post">
            
          
        <table align="center">
        
            <tr> 
          <td><font face="Times New Roman"  size="+1"><strong>Enter Secret Key</strong></font></td>
          <td>&nbsp;&nbsp;&nbsp;&nbsp; <input type="text" name="email" class="b"></td>
        </tr>
        
         <tr> 
         
          <td align="center"> <input type="Reset" value="Reset" class="b"></td>&nbsp;&nbsp;
       <td><input type="submit" value="Login" class="b">
        </tr>
        </table>
            </form><br><br><br>
       </table>
  
     
    </body>
</html>
