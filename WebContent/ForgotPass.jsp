<%@page import="java.util.List" %>
<%@page import="java.util.Iterator" %>
 
<html>
  <title>Forget password</title>
 
<br><br><br><br> 
<h1 align="center" style="font-family:Cursive; font-size:300%;color:#C0C0C0;">Forget Password </h1>
  <br><br>
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
 
 
<%out.println("<body> <form method='post' action='#'>");
out.println("<table id='table1' style='width:100%'> <tr> <td align='right'> <div class='line'><label>Login ID </label> </td> ") ;
String x1=request.getParameter("t1");
if(x1==null)
{
    x1= "";
}
out.println("<td> <input type='text' value='"+x1+"'  name='t1'/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href='#'><input class='button button1 button2' type='submit' value='Check secret qn' style='font-size:12px; font-family:Cursive;'/></a> </td></div> </tr>");
 
out.println("<tr> <td align='right'> <div class='line'> <label>Security Question</label> </td> ");     
String x2=request.getParameter("t2");
if(x2==null)
{
    x2= "";
}     
out.println("<td> <input type='text' value='"+x2+"'  name='t2'/> </td> </div> </tr>");
 
out.println("<table id='table1' style='width:100%'> <tr> <td align='right'> <div class='line'><label>Answer?</label> </td> ") ;
String x3=request.getParameter("t3");
if(x3==null)
{
    x3= "";
}
out.println("<td> <input type='text' value='"+x3+"'  name='t3'/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href='#'><input class='button button1 button2' type='submit' value='Submit' style='font-size:12px; font-family:Cursive;'/></a> </td></div> </tr>");
 
out.println("<tr> <td align='right'> <div class='line'> <label>Your password is</label> </td> ");     
String x4=request.getParameter("t4");
if(x4==null)
{
    x4= "";
}     
out.println("<td> <input type='text' value='"+x4+"'  name='t4'/> </td> </div> </tr>");
out.println("<table style='width:87%'> <tr> </tr> <tr> </tr> <tr> </tr> <tr> </tr> <tr><br>");
List l=(List)request.getAttribute("forget");
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