package Appointment;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/DeleteapmServelt")
public class DeleteapmServelt extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	String id = request.getParameter("id");
	boolean isTrue;
	
	isTrue = PatientDBUtil.deleteappointment(id);
	
	if(isTrue == true) {
		RequestDispatcher dispatcher = request.getRequestDispatcher("createAppointment.jsp");
		dispatcher.forward(request, response);
	}
	else {
		List<Patient> patDetails = PatientDBUtil.getAppointmentDetails(id);
		request.setAttribute("patDetails", patDetails);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("appview.jsp");
		dispatcher.forward(request, response);
		
	}

	}
}