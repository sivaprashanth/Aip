<%@page import="java.util.*" %>
<%@page import="java.text.*" %>
<%@page import="java.sql.*" %>
<%@page import="java.lang.*"%>
<%@page import="java.io.*"%>
<html>
<head>
  <title>User home page</title>
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
    background-color: #808080;
    color: white;
    text-align: center;
    padding: 8px;
font-family:cursive;
font-size: 15px;
}
form label {display:inline-block; width:140px;color:FF9933;font-size:20;}
 
td{  font-family:cursive;font-size: 18px;}
 
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

</style>
    
    <br>
    <center><h2 style="font-size:50px">USER HOME PAGE</h2></center>  
  <br></br>
<table id="cssTable">
  <tr>
    <th align="center" valign="middle">Customer name</th>
    <th align="center" valign="middle">Default Status</th>
    <th align="center" valign="middle">Account Number</th>
<th  align="center" valign="middle">Loan end date</th>
<th align="center" valign="middle">Balance amount</th>
<th align="center" valign="middle">Days Past Due</th>
<th align="center" valign="middle">Last transaction date</th>
<th align="center" valign="middle">Last transaction amount</th>
</tr>
<tr>
 
 
<%
try{

String c1="null";
Connection co=null;
Class.forName("oracle.jdbc.driver.OracleDriver");
co=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","password-1");
Statement s=co.createStatement();
PrintWriter o=response.getWriter();
String userid=(String)session.getAttribute("user");

String c="select cust_name from loan_details1 where login_id='"+userid+"'";
ResultSet rr=s.executeQuery(c);
while(rr.next())
{
	c1=String.valueOf(rr.getString(1));
}

if(c1.equals("null"))
{
	response.sendRedirect("Error.jsp");
}
else
{
String sq="select cust_name,d_status,acc_no,loan_end_date,balance_amt,days_past_due,last_trans_date,last_trans_amt from loan_details1 where login_id='"+userid+"'";
ResultSet r=s.executeQuery(sq);
while(r.next())
{

out.println("<td align='center' valign='middle'>"+r.getString(1)+"</td>")  ; 
out.println("<td align='center' valign='middle'>"+r.getString(2)+"</td>")  ; 
out.println("<td align='center' valign='middle'>"+r.getString(3)+"</td>")  ; 
out.println("<td align='center' valign='middle'>"+r.getString(4)+"</td>")  ; 
out.println("<td align='center' valign='middle'>"+r.getString(5)+"</td>")  ; 
out.println("<td align='center' valign='middle'>"+r.getString(6)+"</td>")  ; 
out.println("<td align='center' valign='middle'>"+r.getString(7)+"</td>")  ; 
out.println("<td align='center' valign='middle'>"+r.getString(8)+"</td></tr>"); 
}}
co.close();
%>
</table>
<br>
<br>
 
 
 
<%
}
catch(Exception e)
{
    e.printStackTrace();
    }
 
 
 
%>
<br><br></center>
 
<center><%  out.println("<body> <form method='post' action='UserTransaction'>");
out.println("<table id='table1' style='width:100%'> <tr> <td align='right'> <label>Login ID </label> </td> ") ;
String x1=request.getParameter("t1");
if(x1==null)
{
    x1= "";
}
out.println("<td> <input type='text' value='"+x1+"'  name='t1'/> </td> </tr>")  ;   
          
out.println("<tr> <td align='right'> <label>Transaction Date </label> </td> ");     
String x2=request.getParameter("t2");
if(x2==null)
{
    x2= "";
}     
out.println("<td> <input type='date' value='"+x2+"' name='t2'/> </td>  </tr>");
 
out.println("<tr> <td align='right'> <div class='line'> <label>Transaction Amount</label> </td> ");     
String x3=request.getParameter("t3");
if(x3==null)
{
    x3= "";
}     
out.println("<td> <input type='text' value='"+x3+"'  name='t3'/> </td> </div> </tr>");
out.println("<table style='width:87%'> <tr> </tr> <tr> </tr> <tr> </tr> <tr> </tr> <tr><br>");
out.println("<center><a href='#'><input class='button button1 button2' type='submit' value='Make Payment' style='font-size:15px; font-family:Cursive;'/></a></center></td> </div> </tr> </table> </form> </body>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;");
List ll=(List)request.getAttribute("go");
if(ll!=null)
{
                Iterator<String> i=ll.iterator();
                while(i.hasNext())
                {
                              	out.println("<center>");
                                out.println("*"+i.next());
                                out.println("<br>");
                                out.println("</center>");
                }
              
} 
%></center>
 
 
 
</body>
</html>