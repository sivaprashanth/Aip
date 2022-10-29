package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class Editbr extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Editbr() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Connection co=null;System.out.println("In edit");
		try
		{
		String s1=request.getParameter("t1");
		String s2=request.getParameter("t2");
		String s3=request.getParameter("t3");
		System.out.println(s3);
		Class.forName("oracle.jdbc.driver.OracleDriver");
        co=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","password-1");
        Statement s=co.createStatement();
        PrintWriter out=response.getWriter();
        
        String status="";
        String sq1="select d_status from loan_details1 where cust_id='"+s1+"'";
        ResultSet rr=s.executeQuery(sq1);
        while(rr.next())
        {
        	status=rr.getString(1);System.out.println(status);
        }
        request.setAttribute("gone",status);
        if(s3.equalsIgnoreCase("select"))
        {
        	RequestDispatcher r=request.getRequestDispatcher("Redefault.jsp");
            r.include(request, response);
        }
        else{
        
        
        
        
        
		
        String sq="update loan_details1 set d_status=? where cust_id=?";
        PreparedStatement p=co.prepareStatement(sq);
        p.setString(1,s3);  
        p.setString(2,s1);        
        p.executeUpdate();
        System.out.println("ji");
        response.sendRedirect("Adminhm.jsp");
        }}
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