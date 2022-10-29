package controller;

import static org.junit.Assert.*;

import java.sql.SQLException;
import java.util.Scanner;

import org.junit.Test;

public class test1 {

@Test
public void testGetConnectionString() throws ClassNotFoundException, SQLException {
 
Scanner sin=new Scanner(System.in);
pojo p=new pojo();
System.out.printf("Enter the First name"); //String dummy=sin.nextLine();
String ss1=sin.nextLine();
p.setFstname2(ss1);
System.out.printf("Enter the Last name"); //String dummy=sin.nextLine();
String ss2=sin.nextLine();
p.setLstname2(ss2);
System.out.printf("Enter the age"); //String dummy=sin.nextLine();
String ss3=sin.nextLine();
p.setAge2(ss3);
System.out.printf("Enter the gender"); //String dummy=sin.nextLine();
String ss4=sin.nextLine();
p.setGender2(ss4);
System.out.printf("Enter the password name"); //String dummy=sin.nextLine();
String ss5=sin.nextLine();
p.setPassword2(ss5);
System.out.println("Enter the retype password number");
String ss6=sin.nextLine();
p.setRetypepwd2(ss6);
assertEquals(ss5, ss6);
System.out.println("Enter the Contact number");
String ss7=sin.nextLine();
       p.setContactno2(ss7);
assertEquals(10,ss7.length());
System.out.printf("Enter the email"); //String dummy=sin.nextLine();
String ss8=sin.nextLine();
p.setEmail2(ss8);
 
System.out.printf("Enter the address"); //String dummy=sin.nextLine();
String ss9=sin.nextLine();
p.setAddress2(ss9);
System.out.printf("Enter zipcode"); //String dummy=sin.nextLine();
String ss10=sin.nextLine();
p.setZipcode2(ss10);
System.out.printf("Enter the city"); //String dummy=sin.nextLine();
String ss11=sin.nextLine();
p.setCity2(ss11);
System.out.printf("Enter the country"); //String dummy=sin.nextLine();
String ss12=sin.nextLine();
p.setCountry2(ss12);
System.out.printf("Enter the security ques"); //String dummy=sin.nextLine();
String ss13=sin.nextLine();
p.setSecurityqus2(ss13);
System.out.printf("Enter the answer"); //String dummy=sin.nextLine();
String ss14=sin.nextLine();
p.setAnswer2(ss14);
int y= p.insertValues();
assertEquals(1, y);
 
}

}