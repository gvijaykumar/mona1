<%-- 
    Document   : download3
    Created on : Dec 1, 2013, 6:00:18 PM
    Author     : Thanu
--%>

<%@page import="java.io.OutputStream"%>
<%@page import="sun.security.util.Password"%>
<%@page import="java.sql.*"%>
<%@page import="java.sql.Connection"%>
<%
              try
               {
 
         String id=(String)session.getAttribute("key");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con1=DriverManager.getConnection("jdbc:mysql://localhost:3306/secure","root","");
    Statement st1=con1.createStatement();
     ResultSet rs1=st1.executeQuery("select * from filereg where fid='"+id+"' ");
     if(rs1.next())
                 {
          Blob b = rs1.getBlob(4);
		
		if(b != null)
		{
			 String dataname =rs1.getString(3);
			dataname+=".doc";
			byte[] ba = b.getBytes(1, (int)b.length());
			response.setContentType("APPLICATION/DOWNLOAD");
			response.setHeader("Content-Disposition","attachment; filename=\""+dataname+"\"");
			 OutputStream os = response.getOutputStream();
			os.write(ba);
			os.close();
			ba = null;
			
			//session.removeAttribute("document1");
			}
     }
         else{
          response.sendRedirect("error.jsp");
         }
    
       }
         

catch(Exception r)
               {
       
}
%>
    </body>
</html>