package controller;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpSession;
 
public class pojo
{ static long l=517000;
private String fstname2;
    private String lstname2;
    private String age2;
    private String gender2;
    private String password2;
    private String retypepwd2;
    private String contactno2;
    private String email2;
    private String address2;
    private String zipcode2;
    private String city2;
    private String country2;
    private String securityqus2;
    private String answer2;
    private String amount2;
    
    
                public String getFstname2() {
return fstname2;
}
public void setFstname2(String fstname2) {
this.fstname2 = fstname2;
}
public String getLstname2() {
return lstname2;
}
public void setLstname2(String lstname2) {
this.lstname2 = lstname2;
}
public String getAge2() {
return age2;
}
public void setAge2(String age2) {
this.age2 = age2;
}
public String getGender2() {
return gender2;
}
public void setGender2(String gender2) {
this.gender2 = gender2;
}
public String getPassword2() {
return password2;
}
public void setPassword2(String password2) {
this.password2 = password2;
}
public String getRetypepwd2() {
return retypepwd2;
}
public void setRetypepwd2(String retypepwd2) {
this.retypepwd2 = retypepwd2;
}
public String getContactno2() {
return contactno2;
}
public void setContactno2(String contactno2) {
this.contactno2 = contactno2;
}
public String getEmail2() {
return email2;
}
public void setEmail2(String email2) {
this.email2 = email2;
}
public String getAddress2() {
return address2;
}
public void setAddress2(String address2) {
this.address2 = address2;
}
public String getZipcode2() {
return zipcode2;
}
public void setZipcode2(String zipcode2) {
this.zipcode2 = zipcode2;
}
public String getCity2() {
return city2;
}
public void setCity2(String city2) {
this.city2 = city2;
}
public String getCountry2() {
return country2;
}
public void setCountry2(String country2) {
this.country2 = country2;
}
public String getSecurityqus2() {
return securityqus2;
}
public void setSecurityqus2(String securityqus2) {
this.securityqus2 = securityqus2;
}
public String getAnswer2() {
return answer2;
}
public void setAnswer2(String answer2) {
this.answer2 = answer2;
}

public String getLoanamount2() {
	return amount2;
	}
	public void setLoanamount2(String amount2) {
	this.amount2 = amount2;
	}

Connection co=null;
                pojo() throws ClassNotFoundException, SQLException
                {
                Class.forName("oracle.jdbc.driver.OracleDriver");
                co=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","password-1");
                }
                public void create() throws SQLException
                {
                if(co!=null)
                {
                System.out.println("connection open");
                }
               
                
                Statement s=co.createStatement();
                
                }
    public int insertValues() throws SQLException
                {
                try
                {
                	 l++;
                	String log=Long.toString(l);
                    String login_id="U"+log;	
                   
                    
                    
                    
                    
                                if(co!=null)
                                {
                                System.out.println("connection open");
                                }
                                String m1="insert into registration1 values(?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
                                PreparedStatement s=co.prepareStatement(m1);//for retrieving the queries
                                s.setString(1,login_id );
                                s.setString(2,getFstname2());
                                s.setString(3,getLstname2());
                                s.setString(4,getAge2());
                                s.setString(5,getGender2());
                                s.setString(6,getPassword2());
                                s.setString(7,getRetypepwd2());
                                s.setString(8,getContactno2());
                                s.setString(9,getEmail2());
                                s.setString(10,getAddress2());
                                s.setString(11,getZipcode2());
                                s.setString(12,getSecurityqus2());
                                s.setString(13,getAnswer2());
                                s.setString(14,getLoanamount2());
                                s.executeUpdate();
                                
                                
                           
                                
                            
                                
                }
                catch(Exception e)
                {
                     System.out.println(e);           
                }
                finally
                {
                	co.close();
                }
				return 1;
                
                }
   
}
