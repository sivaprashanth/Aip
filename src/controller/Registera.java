package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.LinkedList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class Registera extends HttpServlet {
               
                protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException,
                IOException
                {
                                List<String> l=new LinkedList<String>();
                                PrintWriter p=response.getWriter();
                                String fstname=request.getParameter("t1").trim();
                                String lstname=request.getParameter("t2").trim();
                                String age=request.getParameter("t3").trim();
                                String gender=request.getParameter("t4").trim();
                                String password=request.getParameter("t5").trim();
                                String retypepwd=request.getParameter("t6").trim();
                                String contactno=request.getParameter("t7").trim();
                                String email=request.getParameter("t8").trim();
                                String address=request.getParameter("t9").trim();
                                String zipcode=request.getParameter("t10").trim();
                                String securityqus=request.getParameter("t11").trim();
                                String answer=request.getParameter("t12").trim();
                                String amount=request.getParameter("t15").trim();
                                
                                int Age1=0;
                                
                                
                                if(fstname.length()==0)
                                {
                                                l.add("Enter first name field");
                                }
                                else
                                {
                                                for(int i=0;i<fstname.length();i++)
                                                {char c=fstname.charAt(i);
                                                                if((!Character.isDigit(c))||(c!='$')||(c!='@')||(c!='!')||(c!='%')||(c!='&'))
                                                                {
                                                                
                                                                }
                                                                else
                                                                {
                                                                                l.add("Invalid firstname");
                                                                                break;
                                                                }
                                                }
                                }
                                if(lstname.length()==0)
                                {
                                                l.add("Enter last name field");
                                }
                                else
                                {
                                                for(int i=0;i<lstname.length();i++)
                                                {char c=lstname.charAt(i);
                                                                if((!Character.isDigit(c))||(c!='$')||(c!='@')||(c!='!')||(c!='%')||(c!='&'))
                                                                {
                                                                                
                                                                }
                                                                else
                                                                {
                                                                                l.add("Invalid Lastname");
                                                                                break;
                                                                }
                                                }
                                }
                                if(age.length()==0)
                                {
                                                l.add("Enter Age");
                                }
                                else
                                {
                                                try{
                                                Age1=Integer.parseInt(age);
                                                if(Age1>21)
                                                {
                                                                
                                                }
                                                else
                                                {
                                                                l.add("Age should be greater than 21");
                                                }
                                                }
                                     catch(Exception e)
                                     {
                                                 l.add("Enter a number");
                                     }
                                }
                                
                                if(gender.equals("Select"))
                                {
                                                l.add("Enter gender field");
                                }
                               
             
                                                
                                
                                if(password.length()==0)
                                {
                                
                                        l.add("Enter password");
                                }
                                else 
                                {
                                	if (password.matches("((?=.*[0-9])(?=.*[a-zA-Z])(?=.*[@#$!]).{8,})"))
                                	{
                                		
                                	}
                                	else
                                	{
                                    l.add("Password should be of length 8 to 20 characters and must contain a number and a special character");
                                    }
                                    
                                }
                                                   
                                
                                if(retypepwd.length()==0)
                                {
                                
                                       l.add("Retype the password");
                                }
                                else
                                {
                                                if(!retypepwd.equals(password))
                                                {
                                                                l.add("Password Mismatch");
                                                }
                                                
                                }
                                if(contactno.length()==0)
                                {
                                
                                       l.add("Retype the password");
                                }
                                else
                                                
                               {
                                                try
                                                {
                                                long n=Long.parseLong(contactno);
                                                if(contactno.length()!=10)
                                                {
                                                                l.add("Contact Number should be 10 digits");     
                                                }
                               }
                                                catch(Exception e)
                                                {
                                                                l.add("Contact Number should be only digits");
                                                }
                                                
                                }
                                
                                
                                
                              
                                
                                if(email.length()==0)
                                {
                                                l.add("Enter email field");
                                }
                                else
                                {int flag=0;
                                                for(int i=0;i<email.length();i++)
                                                {char c=email.charAt(i);
                                                                if(c=='@')
                                                                {
                                                                                flag++;
                                                                }
                                                }
                                                if(flag!=1)
                                                {
                                                                l.add("Enter valid Email-ID");
                                                }
                                }
                                
                                if(address.length()==0)
                                {
                                                l.add("Enter address field");
                                }
                               
                                if(zipcode.length()==0)
                                {
                                                l.add("Enter zipcode field");
                                }
                                else
                                {
                                if(zipcode.length()==6)
                                {              int flag=1;
                                                for(int i=0;i<zipcode.length();i++)
                                                {char c=zipcode.charAt(i);
                                                if(!Character.isDigit(c))
                                                                {flag=0;break;     
                                }}
                                                if(flag==0)
                                                                {l.add("Enter a valid Zipcode");
                                                                }}
                                                                }
                                                               
                                
                                if(securityqus.equals("Select"))
                                {
                                                l.add("Enter Security ques ");
                                }
                               
                                if(answer.length()==0)
                                {
                                                l.add("Enter Answer ");
                                }
                                
                                if(amount.length()==0)
                                {
                               
                                       l.add("Enter the loan amount");
                                }
                                else
                                               
                               {
                                                try
                                                {
                                                long n=Long.parseLong(amount);
                                                if(amount.length()>7)
                                                {
                                                                l.add("Loan amount should be less than 8 digits");           
                                                }
                               }
                                                catch(Exception e)
                                                {
                                                                l.add("Loan amount should be only digits");
                                                }
                                               
                                }
                                
                                
                                request.setAttribute("go", l);
                                
                                if(!(l.isEmpty()))
                                {
                                                RequestDispatcher r=request.getRequestDispatcher("Register.jsp");
                                                r.include(request, response);
                                }
                                else
                                {
                                                //p.print("hello");
                                                try
                                                {
                                                   
                                                                pojo db=new pojo();   
                                                                db.setFstname2(fstname) ;            
                                                                db.setLstname2(lstname) ;  
                                                                db.setAge2(age);
                                                                db.setGender2(gender);  
                                                                db.setPassword2( password);
                                                                db.setRetypepwd2(retypepwd);
                                                                db.setContactno2( contactno);          
                                                                db.setEmail2( email);  
                                                                db.setAddress2( address);
                                                                db.setZipcode2(zipcode);      
                                                                db.setSecurityqus2( securityqus);      
                                                                db.setAnswer2(answer);
                                                                db.setLoanamount2(amount);
                                                                db.insertValues();           //  db.create();
                                                                
                                                    System.out.println("regis end");
                                                    
                                                    PrintWriter out=response.getWriter();
                                                    Connection co=null;
                                                    Class.forName("oracle.jdbc.driver.OracleDriver");
                                                    co=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","password-1");
                                                    Statement s=co.createStatement();
                                                    String id="";
                                                    ResultSet r=s.executeQuery("select login_id from registration1 where contact_no='"+contactno+"'");
                                                    while(r.next())
                                                    {
                                                    id=String.valueOf(r.getString(1)).trim();
                                                    System.out.println(id);
                                                    }
                                                    out.print("<html><head>");
                                                                                out.print("<title>Success</title></head>");
                                                                                out.print("<body><br><br><br><br><br><br><br><br><center>Registered. Your user id is "+id+". Please login later to see your current details<center></body></html>");
                                                                                out.print("<center><br><br><a href='Login.jsp'><input class='button' type='submit' value='Login' style='font-size:15px; font-family:Cursive;'/></a></center></body></html>");
                                    }
                                    catch (ClassNotFoundException e)
                                    {
                                                    // TODO Auto-generated catch block
                                                    e.printStackTrace();
                                    }
                                    catch (SQLException e)
                                    {
                                                    // TODO Auto-generated catch block
                                                    e.printStackTrace();
                                    }}
                                }
                }
