<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="images/home.css">
<style>
body{
background-image: url("dps.png");
background-size: 100%;
}

</style>
</head>
<body>
<div align="center">
	<img src="images/logo.jpg" class="logo">
	<h4>Student ID : ${std.id}</h4>
	<h4>Student Name : ${std.studentName}</h4>
	<h4>Gender : ${std.gender}</h4>
	<h4>Date Of Birth : ${std.studentdob}</h4>
	<h4>Address : ${std.address}</h4>
	<h4>Father Name : ${std.fathername}</h4>
	<h4>Course: 
    <c:forEach items="${std.subject}" var="g">
					${g}
   </c:forEach></h4>
	<h4 style="text-align:center">Student Photo : <img width="100 height=150" src="data:image/jpg;base64,${std.stdPicture)"></img></h4>
	<br>
	<a href="home">Home Page</a>
	</div>
</body>
</html>