<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ taglib prefix = "form" uri = "http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<style>
.button {
  background-color: #263238;
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
}
body{
background-color:#90a4ae;
}
th, td {
  padding: 10px;
}
table{

	font-family: 'Roboto', sans-serif;
}
</style>
<link href="https://fonts.googleapis.com/css?family=Roboto&display=swap" rel="stylesheet">
<meta charset="ISO-8859-1">
<title>Admin Login</title>
</head>
<body>

<% session=request.getSession(false);
session.invalidate();


%>
<div>
<table style="
    position: absolute;
    top: 31%;
    right: 39%;
  	background-color: #FFFFFF;  
    padding: 4%;">
    <tr>
    <td colspan="2" align="center"><b>You have logged out Successfully!</b></td>
   
    
    </tr>

</table>
</div>
</body>
</html>