package Appointment;

import java.sql.Date;

public class Patient {
	
	private int id;
	private String pname;
	private String dname;
	private String hospital;
	private Date date;
	private String userName;
	private String password;
	
	
	public Patient(int id, String pname, String dname, String hospital, Date date, String userName, String password) {
		
		this.id = id;
		this.pname = pname;
		this.dname = dname;
		this.hospital = hospital;
		this.date = date;
		this.userName = userName;
		this.password = password;
	}


	public int getId() {
		return id;
	}


	public String getPname() {
		return pname;
	}


	public String getDname() {
		return dname;
	}


	public String getHospital() {
		return hospital;
	}

    public Date getDate() {
		return date;
	}


	public String getUserName() {
		return userName;
	}

	public String getPassword() {
		return password;
	}
	
	
}
