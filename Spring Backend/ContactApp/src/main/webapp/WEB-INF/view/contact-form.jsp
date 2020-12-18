<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Contact Form</title>
<style>
		.error{
		color: 	#FF6347;
		 font-size: 14px;	
	}
	
	body {
 background-color: #F3EBF6;     
font-family: 'Ubuntu', sans-serif;
   }

table{ 

padding-left:20px;
font-family: 'Roboto', sans-serif;
}

.add-button {
  
  border: 1px solid #666; 
	padding: 4px; 
	font-size: 12px;
	font-weight: bold;
	width: 120px; 
	padding: 5px 10px; 
	font-family: 'Ubuntu', sans-serif;
	border-radius: 1.5em;
    box-shadow: 0px 11px 35px 2px rgba(0, 0, 0, 0.14);
	margin-bottom: 15px;
	background: #d9d3db;
	 cursor: pointer;
        border-radius: 5em;
        color: #fff;
        background: linear-gradient(to right, #9C27B0, #E040FB);
  
}
h1{
font-family: 'Roboto', sans-serif;
    color: #8C55AA;
}

.button{
	margin-top:25px;
	margin-left:23px;
	 border: 1px solid #666; 
	padding: 4px; 
	font-size: 12px;
	font-weight: bold;
	width: 120px; 
	padding: 5px 10px; 
	font-family: 'Ubuntu', sans-serif;
	border-radius: 1.5em;
    box-shadow: 0px 11px 35px 2px rgba(0, 0, 0, 0.14);
	margin-bottom: 15px;
	background: #d9d3db;
	 cursor: pointer;
        border-radius: 5em;
        color: #fff;
        background: linear-gradient(to right, #9C27B0, #E040FB);
}

.tab{
background: white;
border-radius: 1.5em; 
padding: 55px;   
position: absolute;
   top:20%;  
  left: 22%;  
width: 42%;

}
	
</style>
</head>
<body>

	<h1 align="center" >Add Contact Details</h1>
	
	<div style="  background-color: #F3EBF6;height:25px;">	
		
	<input type="button" value="Contact List"
		onclick="window.location.href = 'list'; return false;"
		class="add-button" style="margin-left:1000px;" />
		<input type="button" value="Logout"
		onclick="window.location.href = 'logout'; return false;"
		class="add-button" />
	</div>
	<div class="tab">
	<form:form action="addContact" modelAttribute="contact"
		method="POST">
		
	<table>
		<tr>
			<td>Contact Id:</td>
			<td>
				<form:input path="contact_id"/>
				<form:errors path="contact_id" cssClass="error"/>
			</td>
		</tr>
		<tr>
			<td>Name:</td>
			<td>
				<form:input path="name"/>
				<form:errors path="name" cssClass="error"/>
			</td>
		</tr>
		
		
		<tr>
			<td>Contact No:</td>
			<td><form:input path="contact_no"/>
				<form:errors path="contact_no" cssClass="error"/>
			</td>
		</tr>
		
		<tr>
			<td>Date of Birth:</td><td><form:input type="date" path="date_of_birth"/>
			<form:errors path="date_of_birth" cssClass="error"/></td>
		</tr>
	</table>	
	<input type="submit" value="Insert" class="button"/>
	<input type="reset" value="Reset" class="button"/>
	
	</form:form>
	</div>
	
</body>
</html>