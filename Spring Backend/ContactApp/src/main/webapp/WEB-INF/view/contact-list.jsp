<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored = "false" %>
    
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Contact List</title>
<style>
body{
	 background-color: #F3EBF6;
}

.head1{
font-family: 'Roboto', sans-serif;
    color: #8C55AA;
}
.tab{
	background-color: #FFFFFF;   
    border-spacing: 10px; 
    box-shadow: 0px 11px 35px 2px rgba(0, 0, 0, 0.14);
    font-family: 'Ubuntu', sans-serif;
}
.searchbar{
	margin-left:767px; border-radius: 20px;
    outline: none;
    box-sizing: border-box;
    border: 2px solid beige;width:200px;height:30px;
}
.div1{
	background-color: #F3EBF6;
	height:25px;
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
.new-button{
border: 1px solid #666; 
	border-radius: 5px; 
	padding: 4px; 
	font-size: 12px;
	font-weight: bold;
	width: 100px; 
	padding: 5px 10px; 
	font-family: 'Ubuntu', sans-serif;
	margin-bottom: 3px;
	background: #F3EBF6;
	 cursor: pointer;
        border-radius: 5em;
        color:black;
        background: linear-gradient(to right, #F3EBF6,  #F3EBF6);
}
table{
	
	border-collapse:collapse;
	 border:1px solid #cccac6;
	 font-family: 'Roboto', sans-serif;
	}

th,td{
 	padding: 5px;
  border-collapse:collapse;
	border:1px solid #cccac6;
}

</style>
<body>
	
	<div id="wrapper">
		<div id="header">
			<h1 class="head1" align="center">CONTACT LIST</h1>
		</div>
	</div>
	
	<div class="div1" style="  ">
	<form method="post" action="search">
		<!-- <input type="number" name="id" placeholder="search by contact id"  class="searchbar">
		<button type="submit" class="add-button">Search</button> -->
	
		<input type="button" value="add contact" onclick="window.location.href='/ContactApp/contact/showForm';return false;"
		       class="add-button"/>
		<input type="button" value="Logout"
			   onclick="window.location.href = 'logout'; return false;"
		       class="add-button" />
	</form>
	</div>
	<br>
	
	
<div class="table">
	<table class="tab">

	
	<tr>
			<th>CON ID</th>
			<th> NAME</th>
			<th>CONTACT NUMBER</th>
			<th>DATE OF BIRTH</th>
			<th>ACTION</th>
		</tr>
	
	<c:forEach var = "con" items = "${ContactList}" >
	
	<c:url var="updateLink" value="/contact/updateForm">
	 <c:param name="contactId" value="${con.contact_id}"/>
	 </c:url>
	 <c:url var="deleteLink" value="/contact/deleteContact">
	 <c:param name="contactId" value="${con.contact_id }"/>
	 </c:url>
	<tr>
	<td>${con.contact_id}</td>
	<td>${con.name }</td>
	<td>${con.contact_no }</td>
	<td>${con.date_of_birth }</td>
	<td><input type="button" value="Update"
		onclick="window.location.href ='${updateLink}'; return false;"
		class="new-button" /><br>
		<input type="button" value="Delete" onclick="window.location.href ='${deleteLink}'; return false;"
		class="new-button" />
	</tr>
	</c:forEach>
	
	</table>
</div>	
</body>
</html>