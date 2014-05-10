<%-- 
    Document   : viewfiles
    Created on : Dec 1, 2013, 4:23:54 PM
    Author     : Thanu
--%>

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
   <li><a href='upload.jsp'><span>File Upload</span></a></li>
    <li><a href='viewfiles.jsp'><span>View Group Files</span></a></li>
     <li><a href='update.jsp'><span>Update Profile</span></a></li>
   <li class='last'><a href='index.jsp'><span>Logout</span></a></li>
</ul>
</div>
    <table align="center">
        <h3><center><font color="black">Mona: Secure Multi-Owner Data Sharing for Dynamic Groups in the Cloud</h3></center>
              <% String name=(String)session.getAttribute("id");%>
              <center> <h2>Welcome To:<%=name%></h2></center>
              <%
              Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/secure","root","");
    Statement st=con.createStatement();
    ResultSet rs=st.executeQuery("select * from filereg  where fh='"+name+"'");
%>
<table align="center" border="1">
    <th>File Owner</th>
    <th>File Id</th>
    <th>File Name</th>
    <th>Time</th>
    <th>Data View</th>
    <th>Data Download</th>
    <th>Group</th>
   
    <%
    while(rs.next())
       {
String fw=rs.getString(1); 
String fw1=rs.getString(2);      
String fn=rs.getString(3);
//String fid=rs.getString(4);
String t=rs.getString(5);
String sta=rs.getString(6);


%>
<tr>
    <td><%=fw%></td>
     <td><%=fw1%></td>
    <td><%=fn%></td>
    <td><%=t%></td>
    <td><a href="view.jsp?<%=fw1%>">View</a></td>
    <td><a href="download.jsp?<%=fw1%>">Download</a></td>
    <td><%=sta%></td>
    
    <%
    
}%>
    
    </body>
</html>
