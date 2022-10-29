package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.LinkedList;
import java.util.List;
 
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
 

public class AddBorrow extends HttpServlet {
               
                protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException,
                IOException
                {
                                List l=new LinkedList();
                                PrintWriter p=response.getWriter();
                                String cust_id=request.getParameter("t1").trim();
                                String login_id=request.getParameter("t2").trim();
                                String cust_name=request.getParameter("t3").trim();
                                String b_rating=request.getParameter("t4").trim();
                                String ac_stat=request.getParameter("t5").trim();
                                String acc_no=request.getParameter("t6").trim();
                                String loan_start=request.getParameter("t7").trim();
                                String loan_end=request.getParameter("t8").trim();
                                String loan_amount=request.getParameter("t9").trim();
                                
                                
                                if(cust_id.length()==0)
                                {
                                                l.add("Enter customer id");
                                }
                                if(login_id.length()==0)
                                {
                                                l.add("Enter login id");
                                }
                                if(cust_name.length()==0)
                                {
                                
                                        l.add("Enter customer name");
                                }
                                if(ac_stat.length()==0)
                                {
                                
                                       l.add("Enter accural status");
                                }
                                if(acc_no.length()==0)
                                {
                                
                                       l.add("Enter account number");
                                }
                                                                
                                
                                if(b_rating.length()==0)
                                {
                                                l.add("Enter borrower rating");
                                }
                                if(loan_start.length()==0)
                                {
                                                l.add("Enter loan start date");
                                }
                                
                                if(loan_end.length()==0)
                                {
                                                l.add("Enter loan end date");
                                }
                                
                                if(loan_amount.length()==0)
                                {
                                	l.add("Enter loan amount");
                                }
                                request.setAttribute("go", l);
                                if(!(l.isEmpty()))
                                {
                                	RequestDispatcher r=request.getRequestDispatcher("Add.jsp");
                                    r.include(request, response);
                                }
                                else
                                {
                                               
                                	try
                                    {System.out.println("Start");
                                		String status="";
                                		int br=Integer.parseInt(b_rating);
                                		int ac=Integer.parseInt(ac_stat);
                                		if(br >= 8 && (ac>=2 || ac<=5))
                                		{
                                			status="Auto";
                                		}
                                		else
                                		{
                                			status="Manual";
                                		}
                                		String dpd="0";
                                		Connection co=null;
                                        Class.forName("oracle.jdbc.driver.OracleDriver");
                                        co=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","password-1");
                                        String tran_date="";
                                        String last_amount="0";
                                        
                                        String m3="insert into loan_details1 values(?,?,?,?,?,?,?,?,?,?,?,?,?)";
                                        PreparedStatement ps3=co.prepareStatement(m3);
                                        ps3.setString(1,cust_id);
                                        ps3.setString(2,login_id);
                                        ps3.setString(3,cust_name);
                                        ps3.setString(4,b_rating);
                                        ps3.setString(5,ac_stat);
                                        ps3.setString(6,loan_start);
                                        ps3.setString(7,loan_end);
                                        ps3.setString(8,loan_amount);
                                        ps3.setString(9,dpd);
                                        ps3.setString(10,acc_no);
                                        ps3.setString(11,tran_date);
                                        ps3.setString(12,last_amount);
                                        ps3.setString(13,status);
                            
                                        ps3.executeUpdate();
                                        
                                        System.out.println("Fine");
                                        response.sendRedirect("Adminhome.jsp");
                                    }
                                    catch (Exception e)
                                    {
                                                    // TODO Auto-generated catch block
                                                    e.printStackTrace();
                                                    System.out.println("Addborrow error");
                                    }
                                    
                                }
                }
 
                }
