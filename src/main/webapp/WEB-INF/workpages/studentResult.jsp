<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="mvc"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Spring MVC From Handling</title>
<style>
    h1 { color: red; }
    .fieldname {color: blue; }
  </style>
</head>
<body>
	<center>
	<h1>Student Data Display</h1>
	<table>
		<tr>
			<td><b><font color="blue">Enrollment ID</font></b></td>
			<td>${s.enrollmentid}</td>
		</tr>
		<tr>
			<td><b><font color="blue">Full name</font></b></td>	
			<td>${s.fullname}</td>
		</tr>
		<tr>
			<td><b><font color="blue">Gender</font></b></td>
			<td>${s.gender}</td>
		</tr>
		<tr>
			<td><b><font color="blue">Email Address</font></b></td>
			<td>${s.emailaddress}</td>
		</tr>
		<tr>
			<td><b><font color="blue">Birth City</font></b></td>
			<td>${s.city}</td>
		</tr>
		<tr>
			<td><b><font color="blue">Birth Country</font></b></td>
			<td>${s.country}</td>
		</tr>
		<tr>
			<td><b><font color="blue">IOWA State Resident</font></b></td>
			<td>${s.iastateresident}</td>
		</tr>
	</table>
		<a href = "form.mvc"><input type = "submit" value="Add New Student"></a>
		<a href = "viewAll.mvc"><input type = "submit" value="View Student List"></a>
	</center>
</body>
</html>