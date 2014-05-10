<%@page import="java.sql.*"%>
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


    <body>
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
    <table align="center">
        <h3><center><font color="black">Mona: Secure Multi-Owner Data Sharing for Dynamic Groups in the Cloud</h3></center>
              <% String name=(String)session.getAttribute("name");%>
              <center> <h2>Welcome To:<%=name%></h2></center>
              <%
              Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/secure","root","root");
    Statement st=con.createStatement();
    ResultSet rs=st.executeQuery("select * from reg where status='Waiting' ");
%>
<table align="center" border="1">
    <th>User Name</th>
    <th>Date Of Birth</th>
    <th>Email Id</th>
    <th>Mobile No</th>
    <th>Address</th>
    <th>Gender</th>
    <th>Group</th>
    <th>Status</th>
    <th>Activate</th>
    <%
    while(rs.next())
       {
String fw=rs.getString(1);        
String fn=rs.getString(3);
String fid=rs.getString(4);
String t=rs.getString(5);
String sta=rs.getString(6);
String stb=rs.getString(7);
String stb1=rs.getString(8);
String stb2=rs.getString(9);
session.setAttribute("email", fid);

%>
<tr>
    <td><%=fw%></td>
    <td><%=fn%></td>
    <td><%=fid%></td>
    <td><%=t%></td>
    <td><%=sta%></td>
    <td><%=stb%></td> 
    <td><%=stb1%></td> 
    <td><%=stb2%></td> 
    <td><a href="accept.jsp?<%=fw%>">Activate</a></td> 
    <%
    
}%>
    
    </body>
</html>
