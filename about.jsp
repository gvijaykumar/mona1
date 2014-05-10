<%-- 
    Document   : about
    Created on : Dec 1, 2013, 2:57:19 PM
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
    <table align="center" bordercolor="blue" >
       
       <tr>
           <td bgcolor="lightblue" align="center"><img src="images/2.gif" hight="400" width="400" ></td></table>
     <p align="justify"> <font size="4">With the character of low maintenance, cloud computing provides an economical and efficient solution for sharing group
resource among cloud users. Unfortunately, sharing data in a multi-owner manner while preserving data and identity privacy from an
untrusted cloud is still a challenging issue, due to the frequent change of the membership. In this paper, we propose a secure multiowner
data sharing scheme, named Mona, for dynamic groups in the cloud. By leveraging group signature and dynamic broadcast
encryption techniques, any cloud user can anonymously share data with others. Meanwhile, the storage overhead and encryption
computation cost of our scheme are independent with the number of revoked users. In addition, we analyze the security of our scheme
with rigorous proofs, and demonstrate the efficiency of our scheme in experiments. </p>
    </body>
</html>
