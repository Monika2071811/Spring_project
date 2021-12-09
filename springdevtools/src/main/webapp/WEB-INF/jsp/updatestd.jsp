<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">

<title>Update Form</title>


<style>
body
{
background-color: #47947C;
}
.header {
  
  padding: 20px;
  text-align: center;
}
.login-div
{
margin:100px auto;
width: 550px;
background-color:#FBECE7;
padding-bottom:50px;
}
input[type=submit], input[type=reset] {
  background-color: #FBECE7;
  border: none;
  color: #DF663A;
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
table,tr,td
{
margin-bottom:10px;
}
td
{
padding:10px;}
</style>
</head>
<body>
<div class="login-div">
<div align="center">
<div class="header">
       
		<h2 style="color: #DF663A">Student Update Form</h2>
		<h1 style="color: black">${msg}</h1>
		</div>
		 <div class="login-form">
		<form:form action="/saveupdate" modelAttribute="std" enctype="multipart/form-data">
				<table>
				<tr>
					<td>ID :</td>
					<td><form:input path="id" /></td>
				</tr>
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
					<td><input type="file" name="updatedPic"></td>
				</tr>
				
				<tr>
					<td><input type="submit" value="Update User" style="float:left"></td>
					<td><input type="reset" value="Clear" style="float:right"></td>
				</tr>
			</table>
		</form:form>
		
		<a href="home">Home Page</a>
		</div>
	</div>
</div>
</body>
</html>