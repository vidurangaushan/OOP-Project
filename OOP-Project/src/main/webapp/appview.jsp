<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Appointment Details</title>

		<link rel="stylesheet" type="text/css" href="css/appview.css">
	
</head>
<body>
 
	<%@ include file = "header.jsp" %>
	
	<div class="left-side">
	
		<h1>Appointment Details</h1>
	 <table>
 
 	<c:forEach var= "pat" items = "${patDetails}">
 	
 	<c:set var="id" value = "${pat.id}"/>
 	<c:set var="pname" value= "${pat.pname}"/>
 	<c:set var="dname" value= "${pat.dname}"/>
 	<c:set var="hospital" value = "${pat.hospital}"/>
 	<c:set var="date" value = "${pat.date}"/>
 	<c:set var="username" value = "${pat.userName}"/>
 	<c:set var="password" value = "${pat.password}"/>
 	
 	
 	<tr>
 		<td>Appointment ID</td>
 		<td>:</td>
 		<td>${pat.id}</td>
 	</tr>
 	<tr>
 		<td>Patient Name</td>
 		<td>:</td>
 		<td>${pat.pname}</td>
 	</tr>
 	<tr>
 		<td>Doctor Name</td>
 		<td>:</td>	
 		<td>${pat.dname}</td>
 	</tr>
 	<tr>
 		<td>Hospital</td>	
 		<td>:</td>
 		<td>${pat.hospital}</td>
 	</tr>
 	<tr>
 		<td>Date</td>
 		<td>:</td>	
 		<td>${pat.date}</td>
 	</tr>
 
 	<tr>
 		<td>Patient UserName</td>	
 		<td>:</td>
 		<td>${pat.userName}</td>
 	</tr>
 	<tr>
 		<td>Patient Password</td>
 		<td>:</td>	
 		<td>${pat.password}</td>
 	</tr>	
 		
 		</c:forEach>
	</table>
	
	 

	<c:url value="updateappointment.jsp" var="appupdate">
		<c:param name="id" value="${id}"/>
		<c:param name="pname" value="${pname}"/>
		<c:param name="dname" value="${dname}"/>
		<c:param name="hospital" value="${hospital}"/>
		<c:param name="date" value="${date}"/>
		<c:param name="uname" value="${username}"/>
		<c:param name="pass" value="${password}"/>
	</c:url>
	
	<div class="update-button" style="padding-top: 10px; padding-bottom: 5px;">
				<a href="${appupdate}">	
		        <button type="submit">Update My Data</button> 
				</a>
	</div> 
	
	
	
	<c:url value="deleteappointment.jsp" var="appdelete">
		<c:param name="id" value="${id}"/>
		<c:param name="pname" value="${pname}"/>
		<c:param name="dname" value="${dname}"/>
		<c:param name="hospital" value="${hospital}"/>
		<c:param name="date" value="${date}"/>
		<c:param name="uname" value="${username}"/>
		<c:param name="pass" value="${password}"/>
	</c:url>
	
	<div class="Cancel-Appointment" style="padding-top: 5px; padding-bottom: 20px;">
				<a href="${appdelete}">	
		        <button type="submit">Cancel Appointment</button> 
				</a>
	</div> 
	
  </div>	
  <div class="right-side">
  </div>

   
 </body>
  <div class="table1">
  	  
    <p>Book My Doc © 2021</p>
   </div> 
   <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/js/bootstrap.bundle.min.js"></script>
</html>