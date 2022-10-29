package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class UserTransaction extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserTransaction() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Connection co=null;System.out.println("In ed");
		try
		{
		String id=request.getParameter("t1");
		String date=String.valueOf(request.getParameter("t2"));System.out.println(date);
		String amt=request.getParameter("t3");
		System.out.println("before1");
		PrintWriter out=response.getWriter();
		Class.forName("oracle.jdbc.driver.OracleDriver");
        co=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","password-1");
        Statement s=co.createStatement();System.out.println("before");
        
        String sq="select balance_amt from loan_details1 where login_id='"+id+"'";
        ResultSet r=s.executeQuery(sq);
        int balance=0;
        while(r.next())
        {
        System.out.println(r.getString(1));
        balance=Integer.parseInt(r.getString(1));
        System.out.println(balance);
        }
        int amount=Integer.parseInt(amt);System.out.println(amount);
        balance=balance-amount;
        String bal=Integer.toString(balance);System.out.println(bal);
        
         //Date calculation
    	
		  Date d1=new Date();
		  SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
		 
		  java.util.Date d2=sdf.parse(date);
		  Calendar cal=Calendar.getInstance();
		  cal.setTime(d1);
		  long n1=cal.getTimeInMillis();
		  cal.setTime(d2);
		  long n2=cal.getTimeInMillis();
		  int n=Math.abs((int) ((n1-n2)/(1000*3600*24)));
		  if(n>=30)
		  {
		  n=n-30;
		  }
		  else
			n=0; 
          String no_days=Integer.toString(n);
          System.out.println(no_days);
          
        String sq1="update loan_details1 set balance_amt=?,days_past_due=?,last_trans_date=?,last_trans_amt=? where login_id=?";
        PreparedStatement p=co.prepareStatement(sq1);
        p.setString(1,bal);  
        p.setString(2,no_days);
        p.setString(3,date);        
        p.setString(4,amt);
        p.setString(5,id);
        p.executeUpdate();
        out.print("<html><head>");
		out.print("<title>Success</title></head>");
		out.print("<body><br><br><br><br><br><br><center>Transaction completed successfully. Please login to check your account status.</center></body></html>");
		out.print("<center><br><br><a href='Login.jsp'><input class='button' type='submit' value='Login' style='font-size:15px; font-family:Cursive;'/></a></center></body></html>");
		}
        catch(Exception e)
        {
        	System.out.println("Error exception1");
        }
		finally{
			try {
				co.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	}

}