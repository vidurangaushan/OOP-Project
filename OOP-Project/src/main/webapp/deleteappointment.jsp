<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cancel Appointment</title>
	
	<link rel="stylesheet" type="text/css" href="css/deleteappointment.css">
</head>
<body>
	<%@ include file = "header.jsp" %>
	<div class="my div">
	<%
			String id = request.getParameter("id");
		    String pname = request.getParameter("pname"); 
		    String dname = request.getParameter("dname");
		    String hospital = request.getParameter("hospital");
		    String date = request.getParameter("date");
		    String username = request.getParameter("uname");
		    String password = request.getParameter("pass");
	%>
	
	<div class="wrap">
	<h1>Cancel Appointment</h1>
	<form action="delete" method ="post">
		
		Appointment ID <input type = "text" name="id" value="<%=id %>" readonly><br><br> 
		Patient Name <input type = "text" name="pname" value="<%=pname%>" readonly><br><br> 
		Doctor Name <input type = "text" name="dname"  value="<%=dname %>" readonly><br><br> 
		Hospital<input type = "text" name="hospital" value="<%=hospital%>"readonly><br><br>          
		Date <input type="date"  name="date" value="<%=date %>" readonly><br><br>
		User Name <input type = "text" name="uname" value="<%=username%>"readonly><br><br> 
		Password <input type = "text" name="pass" value="<%=password%>"readonly><br><br> 	
		
	
		<input type="submit" name="submit" value="Cancel Appointment">
		
    </form>
  </div>
   </div>
  
</body>
	<div class="table1">
  	  
    <p>Book My Doc © 2021</p>
   </div> 
   <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/js/bootstrap.bundle.min.js"></script>
	
	 
</html>