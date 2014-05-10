<%-- 
    Document   : admin
    Created on : Dec 1, 2013, 2:34:55 PM
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


    <body b>
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
    <form action ="admincon.jsp" method="POST">
            
            <table align="center">
                <tr>
                    <td>User Name</td>
                    <td> <input type="text" name="Username" placeholder="Enter User Name" autofocus=""></td>
                </tr>
                <tr>
                    <td>Password</td>
                    <td><input type="password" name="Password" placeholder="Password" autofocus=""></td>
                </tr>
          
            <tr><td>
                    <input type="submit" value="Login">&nbsp;
             <input type="reset"value="reset">
                </td></tr>
            </table>
             </form>
       </table>
     
</html>

     
    </body>
</html>
