<%-- 
    Document   : update
    Created on : Dec 1, 2013, 6:10:39 PM
    Author     : Thanu
--%>



<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <style>
          body {
  background-image: url("images/5_1.jpg");
 }
 </style>
      <link rel='stylesheet' type='text/css' href='styles.css' />
	<script src='http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js'></script>
</head>


    <body>
 <table align="center">
       <tr>
           <td align="center"><img src="images/3_1.jpg" hight="500" width="900" ></td></table>
 
<div id='cssmenu'>
<ul>
   <li class='active'><a href='index.jsp'><span>Home</span></a></li>
   <li><a href='upload.jsp'><span>File Upload</span></a></li>
    <li><a href='viewfiles.jsp'><span>View Group Files</span></a></li>
     <li><a href='update.jsp'><span>Update Profile</span></a></li>
   <li class='last'><a href='index.jsp'><span>Logout</span></a></li>
</ul>
</div>
    <table align="center">
        <h3><center><font color="black">Mona: Secure Multi-Owner Data Sharing for Dynamic Groups in the Cloud</h3></center>
              <% String name=(String)session.getAttribute("id");%>
              <center> <h2>Welcome To:<%=name%></h2></center>
              <%
              Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/secure","root","");
    Statement st=con.createStatement();
    ResultSet rs=st.executeQuery("select * from reg where un='"+name+"'");
    while(rs.next())
         {
       String a=rs.getString(1); 
       String b=rs.getString(3); 
       String c=rs.getString(4); 
       String d=rs.getString(5); 
       String e=rs.getString(6); 
       String f=rs.getString(7); 
       %>
       <form method="post" action="update1.jsp">
           
                    <table align="center">
                        <tr><td>Username:</td>
                        <td><input type="username" name="username" value="<%=a%>"/></td></tr>
                      <tr><td>Password:</td><td> <input type="password" name="pwd" /></td></tr>
                      <tr><td>Date Of Birth:
                              </td><td><select name="month" onChange="changeDate(this.options[selectedIndex].value);">
<option value="na">Month</option>
<option value="1">January</option>
<option value="2">February</option>
<option value="3">March</option>
<option value="4">April</option>
<option value="5">May</option>
<option value="6">June</option>
<option value="7">July</option>
<option value="8">August</option>
<option value="9">September</option>
<option value="10">October</option>
<option value="11">November</option>
<option value="12">December</option>
</select>
<select name="day" id="day">
<option value="na">Day</option>
</select>
<select name="year" id="year">
<option value="na">Year</option>
</select>
<script language="JavaScript" type="text/javascript">
function changeDate(i){
var e = document.getElementById('day');
while(e.length>0)
e.remove(e.length-1);
var j=-1;
if(i=="na")
k=0;
else if(i==2)
k=28;
else if(i==4||i==6||i==9||i==11)
k=30;
else
k=31;
while(j++<k){
var s=document.createElement('option');
var e=document.getElementById('day');
if(j==0){
s.text="Day";
s.value="na";
try{
e.add(s,null);}
catch(ex){
e.add(s);}}
else{
s.text=j;
s.value=j;
try{
e.add(s,null);}
catch(ex){
e.add(s);}}}}
y = 2010;
while (y-->1909){
var s = document.createElement('option');
var e = document.getElementById('year');
s.text=y;
s.value=y;
try{
e.add(s,null);}
catch(ex){
e.add(s);}}
</script></td></tr>

                       <tr><td>Email Id:</td><td> <input type="email" name="email" value="<%=c%>"/><br /></td></tr>
                       <tr><td>Telephone:</td><td> <input type="tele" name="tel" value="<%=d%>"/><br /></td></tr>
                       <tr><td>Address:</td><td> <input type="addr" name="add" value="<%=e%>"/><br /></td></tr>
                       <tr><td>Gender:</td><td> <input type="radio" name="gen" value="Male">Male &nbsp;&nbsp;
                        <input type="radio" name="gen" value="Female">Female</td></tr>
                       <tr><td>  <input type="submit" value="Update" />&nbsp;&nbsp;
                    <input type="reset" value="Reset"/></td>
                           </tr>
                           </table>
		
 
	</form>
    <center>
 

<p>Note: Please make sure your details are correct before submitting form and that all fields marked with * are completed!.</p>
    </center>
 
<%
}
%>
    </body>
</html>
