<%@page import="java.util.*" %>
<%@page import="java.text.*" %>
<%@page import="java.sql.*" %>
<%@page import="java.lang.*"%>
<%@page import="java.io.*"%>
<html>
<head>
  <title>New User page</title>
  <script language="JavaScript" type="text/javascript">
window.history.forward(1);
</script>
  <style>
table {
    border-collapse: collapse;
    width: 100%;
}

h4 {
    text-align: right;
}
th{
    background-color:#808080;
    color: white;
    text-align: center;
    padding: 8px;
font-family:cursive;
font-size: 15px;
}
td{ border-bottom: 1px solid #800000; font-family:cursive;font-size: 18px;}
tr:hover{background-color:#DEB887}
.button {
    background-color: #00BFFF; 
    border: none;
    color: white;
    padding: 10px 20px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 4px 2px;
    -webkit-transition-duration: 0.4s; /* Safari */
    transition-duration: 0.4s;
    cursor: pointer;
}

.button1 {
    background-color: white; 
    color: black; 
    border: 2px solid #0000CD;
}

.button1:hover {
    background-color: #4B0082;
    color: white;
}
.button2 {border-radius: 8px;}
.button3 {border-radius: 4px;}
</style><br><br>
<h4><b><a href="Login.jsp" style="text-decoration:none; font-family:Aharoni; font-size:25px ;color:#FFD700;">Logout</a></h4>
</head>
<body>
<style type="text/css">
body {background-color:ffffff;background-image:url("aipb.jpg");background-repeat:no-repeat;background-size:100% 100%;background-attachment:fixed;}
h2{font-family:Aharoni;color:#FFD700;}
p {font-family:Times;font-size:22px;font-style:normal;font-weight:normal;color:000000;}
</style> 
    
    <br>
    <center><h2 style="font-size:50px">NEW USERS</h2></center> 
    <center><b><a href="Adminhome.jsp" style="text-decoration:underline; color:#FFD700; font-family:Aharoni; font-size:25px">Home</a></center>
                 
  <br></br>  
<table id="cssTable">
  <tr>
    <th align="center" valign="middle">Login ID</th>
    <th align="center" valign="middle">Customer name</th>
    <th align="center" valign="middle">Requested loan amount</th>
	 </tr>
<tr>
<%
try{
Connection co=null;
Class.forName("oracle.jdbc.driver.OracleDriver");
co=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","password-1");
Statement s=co.createStatement();
PrintWriter o=response.getWriter();
String sq="select login_id,first_name,loan_amt from registration1 where login_id not in (select login_id from loan_details1)";
ResultSet r=s.executeQuery(sq);
while(r.next())
{
	
	out.println("<td align='center' valign='middle'>"+r.getString(1)+"</td>");   
	out.println("<td align='center' valign='middle'>"+r.getString(2)+"</td>"); 
	out.println("<td align='center' valign='middle'>"+r.getString(3)+"</td></tr>");
	
}
co.close();
%>
</table>
<%
}
catch(Exception e)
{
    e.printStackTrace();
    }
%>
<br><br><center>
<a href="Add.jsp"><input class="button button1 button2" type="submit" value="Add borrower details" style="font-size:15px; font-family:Cursive;"/></a></center>
</body>
</html>


