<%-- 
    Document   : download
    Created on : Dec 1, 2013, 5:29:13 PM
    Author     : Thanu
--%>

<%@page import="java.sql.*"%>
<%@page import="databaseconnection.SendEmail" %>
<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Mona: Secure Multi-Owner Data Sharing for Dynamic Groups in the Cloud</h1>
        <%
      
Statement st = null;
ResultSet rs = null;
String id=request.getQueryString();
session.setAttribute("key", id);
String email = (String)session.getAttribute("email");
out.println(email);

//String email1 = request.getParameter("select");



            if(email!=""){
                      try{
            Random rand = new Random();
            
            int num = rand.hashCode();
             Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/secure","root","");
            String s = "insert into random1(email,rkey) values('"+email+"',"+num+")";
            PreparedStatement ps = con.prepareStatement(s);
            ps.executeUpdate();
            SendEmail e=new SendEmail();
            e.Email(email,num);
            out.println(email);
            
            response.sendRedirect("download1.jsp?Message=Your Secretkey Successfully Sent to MailId ");
            }catch(Exception e){
            out.println(e);
            }

            }else{
                out.println("ENTER USERNAME AND EMAIL");
            Thread.sleep(1000);
            response.sendRedirect("user.jsp?Message=Failed");
                          }
        %>
        
    </body>
</html>