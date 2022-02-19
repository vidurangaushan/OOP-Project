package Appointment;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/InsertAppointment")
public class InsertAppointment extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String pname = request.getParameter("pname");
		String dname = request.getParameter("dname");
		String hospital = request.getParameter("hospital");
		//Date date = request.getParameter("date");
		
		String date = request.getParameter("date");
		//SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		//Date date = sdf.parse(date);
		
		String username = request.getParameter("uid");
		String password = request.getParameter("pws");
		
		boolean isTrue;
		
		isTrue = PatientDBUtil.insertappointment(pname, dname, hospital, date, username, password);
		
		if(isTrue == true) {
			RequestDispatcher dis = request.getRequestDispatcher("success.jsp");
			dis.forward(request, response);
		} else {
			RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
			dis2.forward(request, response);
		}
	}

}
