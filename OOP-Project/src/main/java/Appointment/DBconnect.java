package Appointment;

import java.sql.DriverManager;
import java.sql.Connection;


public class DBconnect {
	
	private static String url = "jdbc:mysql://localhost:3306/e_channel";
	private static String user = "root";
	private static String pass = "yushan";
	private static Connection con;
	
	public static Connection getConnection() {
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			
			con = DriverManager.getConnection(url, user, pass);
			
		}
		catch(Exception e) {
			System.out.println("not Successfull");
		}
		return con;
	}

}
