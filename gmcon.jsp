<%-- 
    Document   : gmcon
    Created on : Dec 1, 2013, 2:53:28 PM
    Author     : Thanu
--%>


<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <%
       String name=request.getParameter("Username");
        String pwd=request.getParameter("Password");
        session.setAttribute("name", name);
       try
{
          Class.forName("com.mysql.jdbc.Driver");
           Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/secure","root","root");
       Statement st= con.createStatement();
       ResultSet rs=st.executeQuery("select * from gm where Name='"+name+"' and Password='"+pwd+"'");
 if(rs.next())
         {
     response.sendRedirect("gpage.jsp?Message=Success");
 }
 else
 {
      response.sendRedirect("gm.jsp?Message=Failed");
 }

      }
catch(Exception e)
 {
e.printStackTrace();
}%>
    </body>
</html>