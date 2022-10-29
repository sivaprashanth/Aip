package controller;

import java.io.FileOutputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.itextpdf.text.DocumentException;
import com.itextpdf.text.Paragraph; 
import com.itextpdf.text.Document; 
import com.itextpdf.text.pdf.PdfPTable;
import com.itextpdf.text.pdf.PdfWriter; 
/**
 * Servlet implementation class SavePdf
 */
public class SavePdf extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SavePdf() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		// TODO Auto-generated method stub
		
		try
		{
			
		
		Document document=new Document(); 
		
		PdfWriter writer=PdfWriter.getInstance(document,new FileOutputStream("hello4.pdf")); 
		document.open(); 
		document.add(new Paragraph("Manual Defaulters List"));
		PdfPTable table = new PdfPTable(8);
		table.addCell(" Customer ID"); 
		table.addCell("Default Status"); 
		table.addCell("Customer Name"); 
		table.addCell("Borrower Rating"); 
		table.addCell("Accrual Status"); 
		table.addCell("Account Number"); 
		table.addCell("Balance Amount"); 
		table.addCell("Days Past Due"); 
		
		Connection co=null;
		Class.forName("oracle.jdbc.driver.OracleDriver");
		co=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","password-1");
		Statement s=co.createStatement();

		String sq="select cust_id,d_status,cust_name,borrower_rating,accural_status,acc_no,balance_amt,days_past_due from loan_details1 where borrower_rating>8";
		ResultSet r=s.executeQuery(sq);
		while(r.next())
		{
			table.addCell(r.getString(1));
			table.addCell(r.getString(2));
			table.addCell(r.getString(3));
			table.addCell(r.getString(4));
			table.addCell(r.getString(5));
			table.addCell(r.getString(6));
			table.addCell(r.getString(7));
			table.addCell(r.getString(8));
		}
		
		document.add(table); 
		document.close();
		}
		catch(Exception e)
		{
			System.out.println("Error");
		}
	}
		
}


