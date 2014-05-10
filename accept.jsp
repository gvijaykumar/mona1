<%-- 
    Document   : accept
    Created on : Dec 1, 2013, 3:21:38 PM
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
       String id=request.getQueryString();
        String pwd=request.getParameter("Password");
        //session.setAttribute("name", name);
       try
{
          Class.forName("com.mysql.jdbc.Driver");
           Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/secure","root","root");
       Statement st= con.createStatement();
       int x=st.executeUpdate("update reg set status='Accept' where un='"+id+"'");
 if(x==1)
         {
     response.sendRedirect("userkey.jsp?Message=Success");
 }
 else
 {
      response.sendRedirect("gpage.jsp?Message=Failed");
 }

      }
catch(Exception e)
 {
e.printStackTrace();
}%>
    </body>
</html>