<%@page import="java.util.List" %>
<%@page import="java.util.Iterator" %>
 
<html>
  <title>Edit Borrower</title>
 <script language="JavaScript" type="text/javascript">
window.history.forward(1);
</script>
<br><br><br><br> 
<h1 align="center" style="font-family:Cursive; font-size:300%;color:#C0C0C0;">Edit Borrower Details </h1>
  <br><br>
  <center><b><a href="Adminhome.jsp" style="text-decoration:underline; color:CCFFFF; font-family:Aharoni; font-size:25px">Home</a></center>     
  <br></br> 
  <style type="text/css">
   body
   {
     background-image: url("aipb.jpg");
                          background-size:100% 100%;
   }
  
   
           #container {width:300px; margin:0 auto;}
          form label {display:inline-block; width:140px;color:#FFFACD;font-size:25;}
 
            /* You could add a class to all the input boxes instead, if you like. That would be safer, and more backwards-compatible */
            form input[type="text"],
            form input[type="password"],
            form input[type="email"] {width:160px;}
 
            form .line {clear:both;}
            form .line.submit {text-align:right;}
td {
    padding: 10px;
}
 
input.rounded {
                border: 1px solid #ccc;
                -moz-border-radius: 5px;
                -webkit-border-radius: 5px;
                border-radius: 10px;
                -moz-box-shadow: 2px 2px 3px #666;
                -webkit-box-shadow: 2px 2px 3px #666;
                box-shadow: 2px 2px 3px #666;
                font-size: 15px;
                padding: 2px 2px;
                outline: 0;
                -webkit-appearance: none;
}
input.rounded:focus {
                border-color: #00FFFF;
}
#table1 {
margin-bottom:-15px;
}
td{
width:50%;
}
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
    background-color: #00BFFF;
    color: white;
}
.button2 {border-radius: 8px;}
 
 
 
  </style>
   <head>
        <style type="text/css">
 
            body {font-family:Agency FB;}
 
            #container {width:300px; margin:0 auto;}
 
            /* Nicely lines up the labels. */
            form label {display:inline-block; width:140px;}
 
            /* You could add a class to all the input boxes instead, if you like. That would be safer, and more backwards-compatible */
            form input[type="text"],
            form input[type="password"],
            form input[type="email"] {width:160px;}
 
            form .line {clear:both;}
            form .line.submit {text-align:right;}
 
        </style>
    </head>
 
 
<%out.println("<body> <form method='post' action='Editbr'>");
out.println("<table id='table1' style='width:100%'> <tr> <td align='right'> <div class='line'><label>Customer ID </label> </td> ") ;
String x1=request.getParameter("t1");
if(x1==null)
{
    x1= "";
}
out.println("<td> <input type='text' value='"+x1+"'  name='t1'/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href='Editbr'><input class='button button1 button2' type='submit' value='Check status' style='font-size:12px; font-family:Cursive;'/></a> </td></div> </tr>");

String status=(String)request.getAttribute("gone");
%>
<tr> <td align='right'> <div class='line'> <label>Current status</label> </td>     
 
<td> <input type="text" value="<%if(!status.equals(""))out.println(status);%>"  name='t2'/> </td> </div> </tr>
<%
String x3= request.getParameter("t3");
out.println("<tr> <td align='right'> <div class='line'> <label>New status </label> </td>");
out.println("<td> <select name = 't3'>");
String m[]={"Validate error","Auto Weaver","Auto","Manual","Manual weaver"};
if ((x3==null) || x3.equals("Select"))
{
out.println("<option value='Select'>select</option>");  
}
for(int i=0;i<m.length;i++)
{
    out.println("<option value='"+m[i]+"'");
  
    if(m[i].equals(x3))
    {
        out.println("selected");
    }
    out.println(">"+m[i]+"</option>");
}
out.println("</select> </td> </div> </tr>");
out.println("<table style='width:87%'> <tr> </tr> <tr> </tr> <tr> </tr> <tr> </tr> <tr><br><br><br><br><br>");
out.println("<center><a href='Editbr'><input class='button button1 button2' type='submit' value='Submit' style='font-size:15px; font-family:Cursive;'/></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;");
out.println("<input class='button button1 button2' type='submit' value='Reset' style='font-size:15px; font-family:Cursive;'/></a></center></td> </div> </tr> </table> </form> </body>");
List l=(List)request.getAttribute("go");
if(l!=null)
{
                Iterator<String> i=l.iterator();
                while(i.hasNext())
                {
                                out.println("*"+i.next());
                }
              
}
%>
</html>