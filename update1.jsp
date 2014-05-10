<%-- 
    Document   : update1
    Created on : Dec 1, 2013, 6:17:31 PM
    Author     : Thanu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       
        <%@page import="java.sql.*"%>
                   <%
String name=request.getParameter("username");
String passwd=request.getParameter("pwd");
String mo=request.getParameter("month");
String y=request.getParameter("year");
String d=request.getParameter("day");
String date=mo+y+d;
String e=request.getParameter("email");
String te=request.getParameter("tel");
String ad=request.getParameter("add");
String ge=request.getParameter("gen");
session.setAttribute("name", name);

try
               {
     String name3=(String)session.getAttribute("id");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/secure","root","");
    Statement st=con.createStatement();
    int i=st.executeUpdate("update reg set un='"+name+"',pass='"+passwd+"',DOB='"+date+"',EmailId='"+e+"',MobileNo='"+te+"',Address='"+ad+"',Gender='"+ge+"' where un='"+name3+"'");
    if(i ==1){
    response.sendRedirect("update.jsp?message=Success");
        } 
else
{
         response.sendRedirect("update.jsp?message=Failed");
}            
}
catch(Exception r)
               {
       r.printStackTrace();
}
%>
    </body>
</html>