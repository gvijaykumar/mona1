<%-- 
    Document   : download2
    Created on : Dec 1, 2013, 5:56:35 PM
    Author     : Thanu
--%>

<%@page import="sun.security.util.Password"%>
<%@page import="java.sql.*"%>
<%@page import="java.sql.Connection"%>
<%
int key=Integer.parseInt(request.getParameter("email"));

try
               {
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/secure","root","");
    Statement st=con.createStatement();
    ResultSet rs=st.executeQuery("select * from random1 where rkey="+key+" ");
    if(rs.next())
               {
        
    response.sendRedirect("download3.jsp?Message=Success");
       }
    else
    {
    response.sendRedirect("download2.jsp?Message=Failed");
    }               
}
catch(Exception r)
               {
       
}
%>
    </body>
</html>