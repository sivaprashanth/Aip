<%@page import="java.util.List" %>
<%@page import="java.util.Iterator" %>
 
<html>
  <title>Borrower</title>
 <script language="JavaScript" type="text/javascript">
window.history.forward(1);
</script>
  <style>h4 {
    text-align: center;
}</style>
<h1 align="center" style="font-family:Cursive; font-size:300%;color:#C0C0C0;"> Borrower Details </h1>
<h4><b><a href="Adminhome.jsp" style="text-decoration:none; font-family:Aharoni; font-size:25px ;color:CCFFFF;">Home</a></h4>
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
 
 
<%out.println("<body> <form method='post' action='AddBorrow'>");
out.println("<table id='table1' style='width:100%'> <tr> <td align='right'> <div class='line'><label>Customer ID </label> </td> ") ;
String x1=request.getParameter("t1");
if(x1==null)
{
    x1= "";
}
out.println("<td> <input type='text' value='"+x1+"'  name='t1'/> </td> </div> </tr>")  ;   
          
out.println("<tr> <td align='right'> <div class='line'> <label>Login ID</label> </td> ");     
String x2=request.getParameter("t2");
if(x2==null)
{
    x2= "";
}     
out.println("<td> <input type='text' value='"+x2+"' name='t2'/> </td> </div> </tr>");
 
out.println("<tr> <td align='right'> <div class='line'> <label>Customer name </label> </td> ");     
String x3=request.getParameter("t3");
if(x3==null)
{
    x3= "";
}     
out.println("<td> <input type='text' value='"+x3+"'  name='t3'/> </td> </div> </tr>");
 
out.println("<tr> <td align='right'> <div class='line'> <label>Borrower rating </label> </td> ");     
String x4=request.getParameter("t4");
if(x4==null)
{
    x4= "";
}     
out.println("<td> <input type='text' value='"+x4+"' name='t4'/> </td> </div> </tr>");
 
out.println("<tr> <td align='right'> <div class='line'> <label>Accural status </label> </td> ");     
String x5=request.getParameter("t5");
if(x5==null)
{
    x5= "";
}      
out.println("<td> <input type='text' value='"+x5+"'  name='t5'/> </td> </div> </tr>");
 
out.println("<tr> <td align='right'> <div class='line'> <label>Account number </label> </td> ");     
String x6=request.getParameter("t6");
if(x6==null)
{
    x6= "";
}     
out.println("<td> <input type='text' value='"+x6+"' name='t6'/> </td> </div> </tr>");
 
out.println("<tr> <td align='right'> <div class='line'> <label>Loan start date </label> </td> ");     
String x7=request.getParameter("t7");
if(x7==null)
{
    x7= "";
}     
out.println("<td> <input type='date' value='"+x7+"' name='t7'/> </td> </div> </tr>");
 
out.println("<tr> <td align='right'> <div class='line'> <label>Loan end date  </label> </td> ");     
String x8=request.getParameter("t8");
if(x8==null)
{
    x8= "";
}     
out.println("<td> <input type='date' value='"+x8+"' name='t8'/> </td> </div> </tr>");
 
out.println("<tr> <td align='right'> <div class='line'> <label>Loan amount </label> </td> ");     
String x9=request.getParameter("t9");
if(x9==null)
{
    x9= "";
}     
out.println("<td> <input type='text' value='"+x9+"' name='t9'/> </td> </div> </tr>");
 
 
out.println("<table style='width:87%'> <tr> </tr> <tr> </tr> <tr> </tr> <tr> </tr> <tr><br>");
out.println("<center><a href='AddBorrow'><input class='button button1 button2' type='submit' value='Add' style='font-size:15px; font-family:Cursive;'/></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;");
out.println("<input class='button button1 button2' type='reset' value='Reset' style='font-size:15px; font-family:Cursive;'/></a></center></td> </div> </tr> </table> </form> </body>");
out.println("<h4 align='center' style='font-family:Cursive; font-size:20;color:#C0C0C0;'></h4>");
List l=(List)request.getAttribute("go");
if(l!=null)
{
                Iterator<String> i=l.iterator();
                while(i.hasNext())
                {
                	out.print("<h4>");
                    out.println("*"+i.next());
                    out.println("<br>");
                    out.print("</h4>");
                }
}
%>
</html>