<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="images/home.css">
<style type="text/css">

body
{
background-color:plum;
}
td
{
padding:10px;}
.header {
  
  padding: 20px;
  text-align: center;
}
.login-div
{
margin:100px auto;
width: 350px;
background-color:snow;
padding-bottom:50px;
}
input[type=submit], input[type=reset] {
  background-color: green;
  border: none;
  color: white;
  padding: 8px 16px;
  border-radius: 4px;
  text-decoration: none;
  margin:8px;
  cursor: pointer;
}
.login-form
{
margin-bottom:200px;
}
#Uname{  
    width: 150px;  
    height: 30px;  
    border: none;  
    border-radius: 3px;  
    padding-left: 8px;  
}  
#Pass{  
    width: 150px;  
    height: 30px;  
    border: none;  
    border-radius: 3px;  
    padding-left: 8px;  
      
}  
#log{  
    width: 100px;  
    height: 30px;  
    border: none;  
    border-radius: 17px;  
    padding-left: 7px;  
    color: white;  
    cursor: pointer;
    background-color: green;
    transition: transform 0.5s
}  
.button {
    background-color: green;
    border: none;
    color: white;
    padding: 15px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 4px 2px;
    cursor: pointer;
    border-radius: 25px;
    transition: transform 0.5s
}
.button:hover {
    transform: scale(0.9);
}
</style>
<meta charset="ISO-8859-1">
<title>Login Page</title>
</head>
<body>
<div class="login-div">
<div align="center">
<div class="header">
		<h2 style="color: green">Student Login</h2>
		<h3 style="color: black">${msg}</h3>
		</div>
		<div class="login-form">
	<form:form action="validate" modelAttribute="std">
				<table>
				<tr>
					<td>Student Name :  </td>
					<td><form:input path="studentName" id="Uname" placeholder="Student Name"/></td>
					
				</tr>

				<tr>
					<td>Password :  </td>
					<td><form:password path="studentpassword" id="Pass" placeholder="Password"/></td>
				</tr>
				
				<tr>
					<td><input type="submit" id="log" value="Login Here" style="float:left"></td>
					<td><input type="reset" id="log" value="Clear" style="float:right"></td>
				</tr>
			</table>
		</form:form>
		</div>
		<a href="registration" class="button" >New Student? Register here</a>
	</div>
	</div>
</body>
</html>