<%-- 
    Document   : view2
    Created on : Dec 1, 2013, 5:18:03 PM
    Author     : Thanu
--%>

<%@page import="java.sql.*"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>CSP PAGE</title>
    </head>
    <body>
         <%
         String dataname =(String)session.getAttribute("file_name");
                                            
                Class.forName("com.mysql.jdbc.Driver");	
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/trust","root","");
     String filekey=request.getParameter("key");
    Statement st=con.createStatement();
    ResultSet rs=st.executeQuery("select rkey from random1 where rkey='"+filekey+"'");
    if(rs.next())
    {
       Class.forName("com.mysql.jdbc.Driver");	
		Connection con1 = DriverManager.getConnection("jdbc:mysql://localhost:3306/trust","root","");
                Statement st1=con1.createStatement();
    ResultSet rs1=st.executeQuery("select filename,fileupload from upload where filename='"+dataname+"'");
    while(rs1.next())
               {
        Blob file=rs1.getBlob("fileupload");
    byte[] bdata = file.getBytes(1, (int)file.length());
String data1 = new String(bdata);
        %>
        <style type="text/css">
             td {width: 200px}
            td a {height:100%; width:100%;}
           td a:hover {background-color: yellowgreen;}

       body {
	font-size: 14px;
	font-size: medium;
	font-family: inherit;
	color:brown;
        background: url('autumn.jpg') no-repeat scroll;
            background-size: 100% 100%;
            min-height: 700px;
}
</style>
        <table align="center">
            
        <tr>
            <td><font face="Times New Roman"  size="+1" color="white"><strong>DATA NAME</strong></font></td>
            <td> <input type="text" name="name" class="b" value="<%=rs1.getString("filename")%>"></td>
                    
        </tr>
        <tr>
           <td height="172"><font face="Times New Roman"  size="+1" color="white"><strong>MESSAGE</strong></font></td>
            <td> <textarea rows="20" cols="90" name="file"><%=data1%></textarea> 
            </td>
            
                </tr>
                <tr> 
            <td></td>
            <td><a href="cspfiles.jsp"><b>BACK TO VIEW NEXT DATA</b></a></td>
          </tr>
            </table>
                 <%
    }
     }
    else
    {
        %>
       <jsp:forward page="index.jsp" />
        <%
           }
  


%>
    </body>
</html>