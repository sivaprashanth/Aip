<%@page import="java.util.List" %>
<%@page import="java.util.Iterator" %>
 
 
 
<%@page import="java.util.List" %>
<%@page import="java.util.Iterator" %>
 
<html>
  <title>Register</title>
 
  
<h1 align="center" style="font-family:Cursive; font-size:300%;color:#FFF5EE;">AIP REGISTRATION</h1>
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
 
 
 
    <%out.println("<body> <form method='post' action='Registera'>");
out.println("<table id='table1' style='width:100%'> <tr> <td align='right'> <div class='line'><label>First Name*</label> </td> ") ;
 
String x1=request.getParameter("t1");
if(x1==null)
{
    x1= "";
}
out.println("<td> <input type='text' maxlength='20' value='"+x1+"' class='line' name='t1'/> </td> </div> </tr>")  ;   
          
out.println("<tr> <td align='right'> <div class='line'> <label>Last Name* </label> </td> ");     
String x2=request.getParameter("t2");
if(x2==null)
{
    x2= "";
}     
out.println("<td> <input type='text' value='"+x2+"' maxlength='20' class='line' name='t2'/> </td> </div> </tr>");
 
out.println("<tr> <td align='right'> <div class='line'> <label>Age* </label> </td> ");     
String x3=request.getParameter("t3");
if(x3==null)
{
    x3= "";
}     
out.println("<td> <input type='text' value='"+x3+"' class='line' name='t3'/> </td> </div> </tr>");
 
String x4= request.getParameter("t4");
out.println("<tr> <td align='right'> <div class='line'> <label> Gender* </label> </td>");
out.println("<td> <select name = 't4'>");
String m[]={"Male","Female"};
if ((x4==null) || x4.equals("Select"))
{
out.println("<option value='Select'>..Select...</option>");  
}
for(int i=0;i<m.length;i++)
{
    out.println("<option value='"+m[i]+"'");
  
    if(m[i].equals(x4))
    {
        out.println("selected");
    }
    out.println(">"+m[i]+"</option>");
}
out.println("</select> </td> </div> </tr>");
 
out.println("<tr> <td align='right'> <div class='line'> <label>Password* </label> </td> ");     
String x5=request.getParameter("t5");
if(x5==null)
{
    x5= "";
}     
out.println("<td> <input type='password' value='"+x5+"' maxlength='20' class='line' name='t5'/> </td> </div> </tr>");
 
out.println("<tr> <td align='right'> <div class='line'> <label>Re-type password* </label> </td> ");     
String x6=request.getParameter("t6");
if(x6==null)
{
    x6= "";
}     
out.println("<td> <input type='password' value='"+x6+"' class='line' name='t6'/> </td> </div> </tr>");
 
out.println("<tr> <td align='right'> <div class='line'> <label>Contact Number* </label> </td> ");     
String x7=request.getParameter("t7");
if(x7==null)
{
    x7= "";
}     
out.println("<td> <input type='text' maxlength='10' value='"+x7+"' class='line' name='t7'/> </td> </div> </tr>");
 
out.println("<tr> <td align='right'> <div class='line'> <label>Email* </label> </td> ");     
String x8=request.getParameter("t8");
if(x8==null)
{
    x8= "";
}     
out.println("<td> <input type='text' value='"+x8+"' class='line' name='t8'/> </td> </div> </tr>");
 
out.println("<tr> <td align='right'> <div class='line'> <label>Address* </label> </td> ");     
String x9=request.getParameter("t9");
if(x9==null)
{
    x9= "";
}     
out.println("<td> <input type='text' maxlength='100' value='"+x9+"' class='line' name='t9'/> </td> </div> </tr>");%>
 
<tr>
<td align="right"> <div class="line"> <label>Country </label> </td>
<td>    
         <select id="sel1" name="t13" onchange="giveSelection(this.value)">
         <option value="Select"> Select </option>
         <option value="India"> India </option>
         <option value="Canada"> Canada</option>
         <option value="Australia"> Australia </option>
      </select> </td> </div>
   </tr>
 
   <tr>
<td align="right"> <div class="line"> <label>City </label> </td>
  <td>    <select id="sel2" name="t14" >
         <option value="Select"> Select </option>
         <option value="Agra" data-option="India">    Agra </option>
         <option value="Ahmedabad" data-option="India"> Ahmedabad </option>
         <option value="Bangalore" data-option="India">Bangalore </option>
         <option value="Bhopal" data-option="India"> Bhopal </option>
         <option value="Chennai" data-option="India"> Chennai </option>
         <option value="Chidambaram" data-option="India"> Chidambaram </option>
         <option value="Coimbatore" data-option="India"> Coimbatore </option>
         <option value="Delhi" data-option="India"> Delhi </option>
         <option value="Dindigul" data-option="India"> Dindigul </option>
         <option value="Faridabad" data-option="India"> Faridabad </option>
         <option value="Goa" data-option="India"> Goa </option>
         <option value="Gurgaon" data-option="India"> Gurgaon </option>
         <option value="Hyderabad" data-option="India"> Hyderabad </option>
         <option value="Indore" data-option="India"> Indore </option>
         <option value="Jaipur" data-option="India"> Jaipur </option>
         <option value="Jammu" data-option="India"> Jammu </option>
         <option value="Kanchipuram" data-option="India"> Kanchipuram </option>
         <option value="Kanyakumari" data-option="India"> Kanyakumari </option>
         <option value="Kolkata" data-option="India"> Kolkata </option>
         <option value="Kochi" data-option="India"> Kochi </option>
         <option value="Kodaikanal" data-option="India">Kodaikanal </option>
         <option value="Lucknow" data-option="India">Lucknow </option>
         <option value="Madurai" data-option="India"> Madurai </option>
         <option value="Mumbai" data-option="India"> Mumbai </option>
         <option value="Mysore" data-option="India"> Mysore </option>
         <option value="Ooty" data-option="India"> Ooty </option>
         <option value="Pune" data-option="India">    Pune </option>
         <option value="Rameshwaram" data-option="India"> Rameshwaram </option>
         <option value="Rourkela" data-option="India"> Rourkela </option>
         <option value="Thanjavur" data-option="India"> Thanjavur </option>
         <option value="Tirunelveli" data-option="India">Tirunelveli </option>
         <option value="Trichy" data-option="India"> Trichy </option>
         <option value="Tirupati" data-option="India"> Tirupati </option>
         <option value="Yercaud" data-option="India"> Yercaud </option>
      
         <option value="Toronto " data-option="Canada"> Toronto  </option>
            <option value="Montreal" data-option="Canada"> Montreal </option>
            <option value="Ottawa " data-option="Canada"> Ottawa </option>
            <option value="Mississauga" data-option="Canada"> Mississauga </option>
            <option value="North York" data-option="Canada"> North York</option>
            <option value="Winnipeg " data-option="Canada"> Winnipeg  </option>
            <option value="Vancouver " data-option="Canada"> Vancouver  </option>
            <option value="Inuvik" data-option="Canada"> Inuvik</option>
            <option value="Kingston" data-option="Canada"> Kingston </option>
            <option value="Guelph" data-option="Canada"> Guelph </option>
            <option value="Peterborough" data-option="Canada"> Peterborough</option>
            <option value="Thunder Bay" data-option="Canada"> Thunder Bay</option>
         <option value="Sydney " data-option="Australia">Sydney  </option>
            <option value="Melbourne" data-option="Australia">Melbourne </option>
            <option value="Brisbane " data-option="Australia">  Brisbane </option>
            <option value="Perth" data-option="Australia">  Perth</option>
            <option value="   Adelaide" data-option="Australia"> Adelaide</option>
            <option value="Canberra" data-option="Australia">Canberra</option>
            <option value="Newcastle" data-option="Australia"> Newcastle</option>
            <option value="Wollongong" data-option="Australia"> Wollongong</option>
 
 
      </select> </td> </div>
   </tr>
 
 <script>
var sel1 = document.querySelector('#sel1');
var sel2 = document.querySelector('#sel2');
 
var options2 = sel2.querySelectorAll('option');
 
function giveSelection(selValue) {
sel2.innerHTML = '';
for(var i = 0; i < options2.length; i++) {
if(options2[i].dataset.option === selValue) {
sel2.appendChild(options2[i]);
}
}
}
giveSelection(sel1.value);
</script>
<%out.println("<tr> <td align='right'> <div class='line'> <label>Zip code* </label> </td> ");     
String x10=request.getParameter("t10");
if(x10==null)
{
    x10= "";
}     
out.println("<td> <input type='text' maxlength='6' value='"+x10+"' class='line' name='t10'/> </td> </div> </tr>");
String x11= request.getParameter("t11");
out.println("<tr> <td align='right'> <div class='line'> <label> Security question* </label> </td>");
out.println("<td> <select name = 't11'>");
String m1[]={"What is the name of your father","Who is your best friend"};
if ((x11==null) || x11.equals("Select"))
{
out.println("<option value='Select'>..Select...</option>");  
}
for(int i=0;i<m1.length;i++)
{
    out.println("<option value='"+m1[i]+"'");
  
    if(m1[i].equals(x11))
    {
        out.println("selected");
    }
    out.println(">"+m1[i]+"</option>");
}
out.println("</select> </td> </div> </tr>");
 
out.println("<tr> <td align='right'> <div class='line'> <label>Answer* </label> </td> ");     
String x12=request.getParameter("t12");
if(x12==null)
{
    x12= "";
}
out.println("<td> <input type='text' maxlength='20' value='"+x12+"' class='line' name='t12'/> </td> </div> </tr>");

out.println("<tr> <td align='right'> <div class='line'> <label>Loan Amount* </label> </td> ");     
String x15=request.getParameter("t15");
if(x15==null)
{
    x15= "";
}     
out.println("<td> <input type='text' maxlength='20' value='"+x15+"' class='line' name='t15'/> </td> </div> </tr>");

out.println("<table style='width:87%'> <tr> </tr> <tr> </tr> <tr> </tr> <tr> </tr> <tr><br><br>");
out.println("<center><a href='Register.jsp'><input class='button button1 button2' type='submit' value='Register' style='font-size:15px; font-family:Cursive;'/></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;");
out.println("<a href='#'><input class='button button1 button2' type='submit' value='Reset' style='font-size:15px; font-family:Cursive;'/></a></center></td> </div> </tr> </table> </form> </body>");
List ll=(List)request.getAttribute("go");
if(ll!=null)
{
                Iterator<String> i=ll.iterator();
                while(i.hasNext())
                {
                         
                                out.println("*"+i.next());
                                out.println("<br>");
                                
                }
              
}
 
%>
</html>