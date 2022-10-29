package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class Refresh extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Refresh() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Connection co=null;System.out.println("In refresh");
		try
		{
		
		Class.forName("oracle.jdbc.driver.OracleDriver");
        co=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","password-1");
        Statement s=co.createStatement();System.out.println("before");
        String sq1="Auto";String sq2="Manual";
        String sq3="Auto weaver";String sq4="Manual weaver";
        String sq5="Validate error";
        
        String ss1="update loan_details1 set d_status=? where borrower_rating>8 and days_past_due>30";
        PreparedStatement p1=co.prepareStatement(ss1);
        p1.setString(1,sq1);
        p1.executeUpdate();
        
        String ss2="update loan_details1 set d_status=? where borrower_rating>8 and days_past_due between 0 and 30";
        PreparedStatement p2=co.prepareStatement(ss2);
        p2.setString(1,sq3);
        p2.executeUpdate();
        
        String ss3="update loan_details1 set d_status=? where borrower_rating>8 and days_past_due=0";
        PreparedStatement p3=co.prepareStatement(ss3);
        p3.setString(1,sq5);
        p3.executeUpdate();
        
        String ss4="update loan_details1 set d_status=? where borrower_rating<8 and days_past_due=0";
        PreparedStatement p4=co.prepareStatement(ss4);
        p4.setString(1,sq5);
        p4.executeUpdate();
        
        String ss5="update loan_details1 set d_status=? where borrower_rating<8 and days_past_due between 0 and 30";
        PreparedStatement p5=co.prepareStatement(ss5);
        p5.setString(1,sq4);
        p5.executeUpdate();
        
        String ss6="update loan_details1 set d_status=? where borrower_rating<8 and days_past_due>30";
        PreparedStatement p6=co.prepareStatement(ss6);
        p6.setString(1,sq2);
        p6.executeUpdate();
        
        
        
        
        
        
        
        
        
        
        
        
        System.out.println("ji");
        response.sendRedirect("Adminhome.jsp");
          
		}
        catch(Exception e)
        {
        	System.out.println("Refresh error");
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