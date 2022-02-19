<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Create Appointment</title>

 		<link rel="stylesheet" type="text/css" href="css/createappointment.css">
 	
</head>
<body>
	<%@ include file = "header.jsp" %>
   
   <table>
    <div class="wrap">
 	<h1>Create Appointment</h1>
 	<form action="insert" method ="post">
		Patient Name <input type = "text" name="pname"  placeholder="Dasun"><br><br> 
		Doctor Name <input type = "text" name="dname" placeholder="Mr_Perera"><br><br> 
		Hospital <select  name="hospital">
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
							
		
		Date <input type="date" id="date" name="date" value="2021-09-30" placeholder="2021-09-30">
	    
	    
	    <br><br>
	    
		User Name <input type = "text" name="uid"><br><br> 
		Password <input type = "text" name="pws"><br><br> 	
		
		<input type="submit" name="submit" value="Create Appointment">
 	</form>
   </div>
   
  </table>
</body>
   <hr>
	 <%@ include file = "footer.jsp" %>
</html>