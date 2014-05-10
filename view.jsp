<%-- 
    Document   : view
    Created on : Dec 1, 2013, 4:52:01 PM
    Author     : Thanu
--%>


   
<%@page import="java.util.Random"%>
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
     String id=request.getQueryString();
     Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/secure","root","");
    Statement st=con.createStatement();
    ResultSet rs=st.executeQuery("select * from filereg  where fid='"+id+"'"); 
   while(rs.next())
               {
        Blob file=rs.getBlob(4);
    byte[] bdata = file.getBytes(1, (int)file.length());
   String data1 = new String(bdata);
        %>
        <table align="center">
            
        <tr>
            <td><font face="Times New Roman"  size="+1" color="black"><strong>DATA NAME</strong></font></td>
            <td> <input type="text" name="name" class="b" value="<%=rs.getString(3)%>"></td>
                    
        </tr>
        <tr>
           <td height="172"><font face="Times New Roman"  size="+1" color="black"><strong>MESSAGE</strong></font></td>
            <td> <textarea rows="20" cols="90" name="file"><%=data1%></textarea> 
            </td>
            
                </tr>
                <tr> 
            <td></td>
            <td><a href="viewfiles.jsp"><b>BACK TO VIEW NEXT DATA</b></a></td>
          </tr>
            </table>
                 <%
    }
     
  


%>
%>
                    
    </body>
</html>
