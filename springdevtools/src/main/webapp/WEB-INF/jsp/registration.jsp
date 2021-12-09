<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="images/home.css">
<meta charset="ISO-8859-1">
<title>Registration Page</title>
<style>
body
{
background-color: darkgreen;
}
td
{
padding:10px;
}
.header {
  
  padding: 20px;
  text-align: center;
}
.login-div
{
margin:100px auto;
width: 550px;
background-color:white;
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
margin-bottom:10px;

}
#Uname{  
    width: 300px;  
    height: 30px;  
    border: none;  
    border-radius: 3px;  
    padding-left: 8px;  
}  
#Pass{  
    width: 300px;  
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
</head>
<body>
<div class="login-div">
<div align="center">
<div class="header">
		<h2 style="color: green">New Student Registration Form</h2>
		<h1 style="color: black">${msg}</h1>
		 </div>
		 <div class="login-form">
	<form:form action="submitform" modelAttribute="std" enctype="multipart/form-data">
				<table>
				<tr>
					<td>Name :</td>
					<td><form:input path="studentName"/></td>
				</tr>
<tr>
					<td>Password :</td>
					<td><form:password path="studentpassword"/></td>
				</tr>
				<tr>
					<td>Gender : </td>
					<td>Male<form:radiobutton path="gender" value="Male" /><br>
					Female<form:radiobutton path="gender" value="Female" /></td>
				</tr>
				<tr>
					<td>Father Name :</td>
					<td><form:input path="fathername"/></td>
				</tr>
				<tr>
					<td>Date of birth :</td>
					<td><form:input type="date" path="studentdob"/></td>
				</tr>
				<tr>
				      <td>Address :</td>
				      <td><form:select path="address">
				      <form:option value="J P Nagar" label="J P Nagar"/>  
                      <form:option value="Marathalli" label="Marathalli"/>  
                      <form:option value="E City" label="E city"/>  
                      <form:option value="Bannerghata" label="Bannerghata"/> 
                      <form:option value="Outside Bangalore" label="Outside Bangalore"/>
                      <form:option value="None of these" label="None of these"/> 
                      </form:select>  
				</tr>
				
				<tr>
				      <td>Course: </td>
				     <td> PCMC<form:checkbox path="subject" value="PCMC"/> <br>
                      PCMB<form:checkbox path="subject" value="PCMB"/>  <br>
                      PCME<form:checkbox path="subject" value="PCME"/> </td> 
				</tr>
				<tr>
					<td>Picture :</td>
					<td><input type="file" name="pic"></td>
				</tr>
				
				<tr>
					<td><input type="submit" value="Register User" style="float:left"></td>
					<td><input type="reset" value="Clear" style="float:right"></td>
				</tr>
			</table>
		</form:form>
		
		<a href="index">Login back to visit home page</a>
		</div>
	</div>
	</div>
</body>
</html>