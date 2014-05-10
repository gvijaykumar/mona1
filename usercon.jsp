<%-- 
    Document   : usercon
    Created on : Dec 1, 2013, 3:41:41 PM
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
       ResultSet rs=st.executeQuery("select * from reg where EmailId='"+name+"' and Pass='"+pwd+"'");
 if(rs.next())
         {
     String id=rs.getString(1);
     session.setAttribute("id", id);
     response.sendRedirect("userkey1.jsp?Message=Success");
 }
 else
 {
      response.sendRedirect("gu.jsp?Message=Failed");
 }

      }
catch(Exception e)
 {
e.printStackTrace();
}%>
    </body>
</html>