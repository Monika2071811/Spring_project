<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="images/home.css">
<title>Details Page</title>
<style>
body
{
background-color: white;
}
table, td, th {
  border: 1px solid black;
  
}
table {
width:75%;
  border-collapse: collapse;
}
th{
text-align:center;
height:50px;
  background-color: green;
  color: black;}
td
{
  background-color: white;
  color: black;
text-align:left;
}
td img{
    display: block;
    margin-left: auto;
    margin-right: auto;

}
img{
height:90px;
width:100px;
ali
}

</style>
</head>
<body>
<div align="center">
		<img src="images/logo.jpg" class="logo">
		<h2 style="color: black">Student Details</h2>
		<table border="1">
			<tr>
				<th>ID</th>
				<th>Student Name</th>
				<th>Gender</th>
				<th>Date Of Birth</th>
				<th>Address</th>
				<th>Father Name</th>
				<th>Course</th>
				<th>Photo</th>
				<th>Edit</th>
				<th>Delete</th>
			</tr>



			<c:forEach items="${stdl}" var="s">
				<tr>
					<td><a href="viewbyid/${s.id}">${s.id}</a></td>
					<td>${s.studentName}</td>
					<td>${s.gender}</td>
					<td>${s.studentdob}</td>
					<td>${s.address}</td>
					<td>${s.fathername}</td>
					<td><c:forEach items="${s.subject}" var="g">
					${g}
					</c:forEach></td>
					<td><img  alt="No Photo"  src="data:image/jpg;base64,${s.stdPicture}"></img></td>
					<td><a href="updatestd/${s.id}">Edit</a></td>
					<td><a href="deletestd/${s.id}">Delete</a></td>
				</tr>
			</c:forEach>
		</table>
		<br><br>
		<a href="home">Home Page</a>
	</div>

</body>
</html>