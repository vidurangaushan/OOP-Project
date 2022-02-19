<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Appointment</title>

			<link rel="stylesheet" type="text/css" href="css/updateappointment.css">
</head>
<body>
	<%@ include file = "header.jsp" %>
	<table>
		<%
			String id = request.getParameter("id");
		    String pname = request.getParameter("pname"); 
		    String dname = request.getParameter("dname");
		    String hospital = request.getParameter("hospital");
		    String date = request.getParameter("date");
		    String username = request.getParameter("uname");
		    String password = request.getParameter("pass");
		%>
	<div class="left-side">
	 
	  	<h1>Update Appointment</h1>
	  	<br>
	  	
		<form action="update" method ="post">
		
		<label>Appointment ID </label>
		<input type = "text" name="id" value="<%=id %>" readonly><br>
		
		<label>Patient Name </label>
		<input type = "text" name="pname" value="<%=pname%>" readonly><br>
		
		<label>Doctor Name</label>
		 <input type = "text" name="dname"  value="<%=dname %>" readonly><br><br> 
		
		<label>Hospital</label>
		<select  name="hospital"  value="<%=hospital%>">
						<option value = "Lanka Hospital">Lanka Hospital</option>
						<option value="Nawaloka Hospital">Nawaloka</option>
			            <option value="Asiri Hospital">Asiri</option>
			            <option value="Southern Hospital">Southern Hospital</option>	
			            <option value="Sethma">Sethma Hospital</option>	
			            <option value="Arogya">Arogya Hospital</option>	
			            <option value="Durdans">Durdans</option>	
			            <option value="Central Hospital">Central Hospital</option>	
			            
			           
		        </select>
		        <br><br>
		        
		<label>Date</label>          
	    <input type="date" id="date" name="date" value="<%=date %>" ><br>
	    
	    <label>User Name</label>
		 <input type = "text" name="uname" value="<%=username%>"><br>
		 
		<label>Password</label> 
	     <input type = "text" name="pass" value="<%=password%>"><br><br> 
		
		<div class="Update-Appointment" style="padding-top: 10px; padding-bottom: 5px;">
	     <button type="submit">Update Appointment</button>
	    </div>	
	   
		
		<!--   <div class="Cancel-Appointment" style="padding-top: 5px; padding-bottom: 20px;">
 	    <a href="deleteappointment.jsp">
	    <button type="submit">Cancel Appointment</button>
	    </a>
	    </div>
		-->
 	</form>
 	     
 	     
	 </div>  
	 
	</table>
 </body>
  <%@ include file = "footer.jsp" %> 
</html>