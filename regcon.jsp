<%-- 
    Document   : regcon
    Created on : Nov 29, 2013, 2:14:24 PM
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
String grp=request.getParameter("group");
session.setAttribute("grp", grp);
session.setAttribute("name", name);

try
               {
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/secure","root","root");
    Statement st=con.createStatement();
    int i=st.executeUpdate("insert into reg values('"+name+"','"+passwd+"','"+date+"','"+e+"','"+te+"','"+ad+"','"+ge+"','"+grp+"','Waiting')");
    if(i ==1){
    response.sendRedirect("gu.jsp?message=Success");
        } 
else
{
         response.sendRedirect("signup.jsp?message=Failed");
}            
}
catch(Exception r)
               {
       r.printStackTrace();
}
%>
    </body>
</html>
