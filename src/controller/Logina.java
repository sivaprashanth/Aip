package controller;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import java.util.LinkedList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class LoginVal
 */
public class Logina extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Logina() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
		
		HttpSession session=request.getSession(false);
		Connection co=null;int f=0;
		try
		{
		String s1=request.getParameter("t1");System.out.println(s1);
		String s2=request.getParameter("t2");
		session.setAttribute("user",s1);
		
		PrintWriter out=response.getWriter();
		Class.forName("oracle.jdbc.driver.OracleDriver");
        co=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","password-1");
        Statement s=co.createStatement();
        
        String adid="admin";
        String adpasswd="admin";
        	if(s1.equals(adid) && s2.equals(adpasswd))
        	{
        		response.sendRedirect("Adminhome.jsp");
        	}
        
        ResultSet r=s.executeQuery("select * from registration1");
        while(r.next())
        {
        	
        String s3=String.valueOf(r.getString(1)).trim();
        if(s3.equals(s1))
        {
        String s4=String.valueOf(r.getString(6)).trim();
          if(s4.equals(s2))
          {
        	RequestDispatcher rr=request.getRequestDispatcher("Userhm.jsp");
        	rr.forward(request, response);
          }
        }}
        List<String> ll=new LinkedList<String>();
        ll.add("Enter a valid login id and password");
        request.setAttribute("gun", ll);
        RequestDispatcher re=request.getRequestDispatcher("Login.jsp");
    	re.forward(request, response);
        
		}
        catch(Exception e)
        {
        	System.out.println("Error exception");
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