<%-- 
    Document   : fileupload1
    Created on : Dec 1, 2013, 4:13:16 PM
    Author     : Thanu
--%>

<%@page import="java.io.InputStream"%>
<%@page import="java.io.File"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page contentType="text/html;" language="java" import="java.sql.*"  %>

<%
String ff=request.getParameter("file");
String ab=request.getParameter("fid");
String b=request.getParameter("fname");
session.setAttribute("key",ab);
String w="Waiting";


String a="D:/file/";

String fname=a+ff;
FileInputStream fis = null;
File image=new File(fname);

try
{
  
  String name=(String)session.getAttribute("id");
  String email=(String)session.getAttribute("user");
  java.sql.Timestamp sqlNow=new java.sql.Timestamp(new java.util.Date().getTime());
  Class.forName("com.mysql.jdbc.Driver");
 Connection con1=DriverManager.getConnection("jdbc:mysql://localhost:3306/secure","root","");
 Statement st=con1.createStatement();
 ResultSet rs=st.executeQuery("select * from reg where un='"+name+"'");
 while(rs.next())
         {
      String grp=rs.getString(8);
      String email1=rs.getString(4);
     session.setAttribute("email1", email1);
 
 Class.forName("com.mysql.jdbc.Driver");
 Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/secure","root","");
 PreparedStatement ps=con.prepareStatement("insert into filereg  values(?,?,?,?,?,?)");
ps.setString(1,name);
ps.setString(2,ab);
fis=new FileInputStream(image);
ps.setBinaryStream(4, (InputStream)fis, (int)(image.length()));
ps.setTimestamp(5,sqlNow);
ps.setString(3,b);
ps.setString(6,grp);
 int x=ps.executeUpdate();

//out.print(Successfully Registered);
if (x==1)
         {
    response.sendRedirect("userpage.jsp?Message=Success");
}


 }
}
catch(Exception e1)
{
out.println(e1.getMessage());
}

%>
