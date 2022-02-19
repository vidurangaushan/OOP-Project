package Appointment;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/UpdateapmServlet")
public class UpdateapmServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("id");
		String pname = request.getParameter("pname");
		String dname = request.getParameter("dname");
		String hospital = request.getParameter("hospital");
		String date = request.getParameter("date");
		String username = request.getParameter("uname");
		String password = request.getParameter("pass");
	
	
		boolean isTrue;
		
		isTrue = PatientDBUtil.updateappointment(id, pname, dname, hospital, date, username, password);
		
		if(isTrue == true) {
			
			List<Patient> patDetails = PatientDBUtil.getAppointmentDetails(id);
			request.setAttribute("patDetails", patDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("appview.jsp");
			dis.forward(request, response);
		}
		else {
			List<Patient> patDetails = PatientDBUtil.getAppointmentDetails(id);
			request.setAttribute("patDetails", patDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("appview.jsp");
			dis.forward(request, response);
		}
	}
		
}
