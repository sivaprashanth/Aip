package controller;

import static org.junit.Assert.*;

import java.sql.SQLException;
import java.util.Scanner;

import org.junit.Test;

public class Jtest {

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
 
}

}