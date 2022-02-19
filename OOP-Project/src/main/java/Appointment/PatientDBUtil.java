package Appointment;

import java.sql.Connection;
import java.sql.Date;
//import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;


public class PatientDBUtil {
	
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	//validate username and password
	
	public static boolean validate(String username, String password) {
		
				
				try {
					 
					 con = DBconnect.getConnection();
					 stmt = con.createStatement();
					 String sql = "select * from appointment where username='"+username+"' and password='"+password+"'";
				     rs = stmt.executeQuery(sql);
				     
				     if(rs.next()) {
				    	 isSuccess = true;
				     } else {
				    	 isSuccess = false;
				     }
				}
				catch(Exception e) {
					e.printStackTrace();
				}
				
				return isSuccess;
				
	}
	
	public static List<Patient> getAppointment(String userName){
		
	ArrayList<Patient> pat = new ArrayList<>();
		
	
		//validate
		
		try {
			 
			 con = DBconnect.getConnection();
			 stmt = con.createStatement();
			 String sql = "select * from appointment where username = '"+userName+"'";
			 rs = stmt.executeQuery(sql);
			 
			 while(rs.next()) {
				 int id = rs.getInt(1);
				 String pname = rs.getString(2);
				 String dname = rs.getString(3);
				 String hospital = rs.getString(4);
				 Date date = rs.getDate(5);				 
				 String userU = rs.getString(6);
				 String passU = rs.getString(7);
				 
				 Patient p = new Patient(id,pname,dname,hospital,date,userU,passU);
				 pat.add(p);
				 
			 }
			
	     }  
		catch(Exception e) {
			e.printStackTrace();
		}
		
	 return pat;
	 
	}
	
	//insert data
	
	public static boolean insertappointment(String pname,String dname, String hospital, String date, String username, String password) {
		
		boolean isSuccess = false;
		
		//validate
				
				try {
					 
					 con = DBconnect.getConnection();
					 stmt = con.createStatement();
					 String sql = "insert into appointment values (0, '"+pname+"','"+dname+"','"+hospital+"','"+date+"','"+username+"','"+password+"')";
				     int rs = stmt.executeUpdate(sql);
				     
				     if(rs > 0) {
				    	 isSuccess = true;
				     } else {
				    	 isSuccess = false;
				     }
				}
				catch(Exception e) {
					e.printStackTrace();
				}
				
				return isSuccess;
				
	}
	
	//update data
	
  public static boolean updateappointment(String id,String pname,String dname, String hospital, String date, String username, String password) {
		
		boolean isSuccess = false;
				
				try {
					 con = DBconnect.getConnection();
					 stmt = con.createStatement();
					 String sql = "update appointment set hospital='"+hospital+"',date='"+date+"',username='"+username+"',password='"+password+"'" 
						       + "where id = '"+id+"'";
					 int rs = stmt.executeUpdate(sql);
					
				     if(rs > 0) {
				    	 isSuccess = true;
				     } else {
				    	 isSuccess = false;
				     }
				}
				catch(Exception e) {
					e.printStackTrace();
				}
				
				return isSuccess;
				
	}

	//get update data
	
	public static List<Patient> getAppointmentDetails(String ID) {
		
		int convertedID = Integer.parseInt(ID);
		
		ArrayList<Patient> pat = new ArrayList<>();
		
		try {
			
		     con = DBconnect.getConnection();
			 stmt = con.createStatement();
			 String sql = "select * from appointment where id = '"+convertedID+"'";
			 rs = stmt.executeQuery(sql);
		     
		     while(rs.next()) {
		    	 int id = rs.getInt(1);
		    	 String pname = rs.getString(2);
		    	 String dname = rs.getString(3);
		    	 String hospital = rs.getString(4);
		    	 Date date = rs.getDate(5);
		    	 String username = rs.getString(6);
		    	 String password = rs.getString(7);
		    	 
		    	 Patient p = new Patient(id, pname, dname, hospital, date, username, password);
		    	 pat.add(p);
		     }
		}
		catch(Exception e) {
			e.printStackTrace();		
			}
		return pat;
	}
	
	//delete data
	
	public static boolean deleteappointment(String id) {
		
		int convertID = Integer.parseInt(id);
		
		try {
		    
		     con = DBconnect.getConnection();
			 stmt = con.createStatement();
			 String sql = "delete  from appointment where id = '"+convertID+"'";
			 int rs = stmt.executeUpdate(sql);
		     
		     if(rs > 0) {
		    	 isSuccess = true;
		     }
		     else {
		    	 isSuccess = false;
		     }
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return isSuccess;
	}
} 
