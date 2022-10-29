<%@page import="java.util.LinkedList"%>
<%@page import="java.util.List" %>
<%@page import="java.util.Iterator" %>
 
 
 
<%@page import="java.util.List" %>
<%@page import="java.util.Iterator" %><html>
  <head>
  <title>Login</title>
  <script language="JavaScript" type="text/javascript">
window.history.forward(1);
</script>
  <style>

.button {
    background-color: #007fff;
    border: none;
    color: white;
    padding: 8px 30px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 4px 2px;
    cursor: pointer;
}
form label {display:inline-block; SIZE:40;}
h4 {
    text-align: right;
}

</style>
<br><br>
<h4><a href="Register.jsp" style="text-decoration:none; font-family:Aharoni; font-size:25px ;color:CCFFFF;">Register</a></h4>
</head>  
<body>

<style type="text/css">
body {background-color:ffffff;background-image:url("aipb.jpg");background-repeat:no-repeat;background-size:100% 100%;background-attachment:fixed;}
h1{font-family:Times;color:000000;}
p {font-family:Times;font-size:22px;font-style:normal;font-weight:normal;color:000000;}
</style>
    <br><center><b><h1 style="font-family:Agency FB;color:#FFDAB9;">WELCOME TO AIP</h1></b><center>
    <center><h2 style="font-family:Agency FB; color:#FFDAB9;">LOGIN PAGE</h2><center>
    <div class="navbar" >
    <ul class="nav navbar-nav navbar-right FrontPageLinks" >
    
    </ul>
  </div>
  <div class="container" id="mainPageContent"> 
  
   <br>
                <div class="col-lg-4 col-lg-offset-4 col-md-4 col-md-offset-4" style="z-index: 3">
      <center><div class=" panel panel-primary" style="border-radius:20px;border:none; width:400px;box-shadow: 2px 3px 10px 2px #333;"><center>
        <div class="panel-heading blueGradient" style="border-radius:20px 20px 0px 0px;">            
        </div>              
        <div class="panel-body">
          <form action="Logina" method="post">
            <center><div class="form-group">
            <br></br><center><h3><FONT style="font-family:Agency FB;color:#FFDAB9;FONT-SIZE:23;"> Login Credentials</Enter></center></h3><br></br>                             
              <label>Login ID</label>
              <input type="text" name="t1" value="" placeholder="Enter Login " style="width:175" class="form-control" id="username" />
            </div>
  <br /><br />
            <div class="form-group">
                                                <label>Password</label>
               <input type="password" name="t2" value="" style="width:175" placeholder="Password" class="form-control" id="password" />
            </div> 
  <br /><br />
            <input type="hidden" name="insId" value=""/>
            <input class="button" type="submit" value="Login"/>
         
         
         
  <br /><br />
  
  
            </center>

          </form>
        </div>              
      </div>
    </div>
  
  </div>
  <%List l=new LinkedList(); 
  l=(List)request.getAttribute("gun");
if(l!=null)
{
                Iterator<String> i=l.iterator();
                while(i.hasNext())
                {
                              out.println("<center>");
                                out.println("*"+i.next());
                                out.println("<br>");
                                out.println("</center>");
                }
              
}
  
  %>
</body>

</html>
