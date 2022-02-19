<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
	  
 		<link rel="stylesheet" type="text/css" href="css/Style.css">
      	
</head>
<body>

   <%@ include file = "header.jsp" %>
 
 <table>
  <div class="left-side"></div>
   <div class="right-side">
   	
      <h1>Login</h1>
	<form action="log" method = "post">
	
	  <div class ="input-div" style="padding-top:10px; padding-bottom:20px;">
			<label>User Name</label>
			 <input type = "text" name = "uid"> <br>
	 </div>
	 <div class ="input-div" style="padding-top:10px; padding-bottom:20px;">
			<label>Password</label>
			 <input type = "password" name = "pass"> <br>
	 </div>
		
	
	<div class="loging-button" style="padding-top: 10px; padding-bottom: 20px;">	
		 <button type="submit">Login</button> 
		
	</div> 
		 
	</form>
	
	<div class="New-Appointment" style="padding-top: 10px; padding-bottom: 20px;">
	      <a href="createAppointment.jsp">
	      <button>New Appointment</button>
	      </a>
	     
	     </div>
	 </div>
	</table>
	 <%@ include file = "footer.jsp" %>
	 
</body>

</html>