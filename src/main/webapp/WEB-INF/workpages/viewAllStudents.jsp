<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="mvc"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>All Students</title>
</head>
<body>
	<c:forEach items="${all}" var="item">
		<table>
			<tr>
				<td><b><font color="blue">Enrollment ID</font></b></td>
				<td>${item.enrollmentid}</td>
			</tr>
			<tr>
				<td><b><font color="blue">Full name</font></b></td>
				<td>${item.fullname}</td>
			</tr>
			<tr>
				<td><b><font color="blue">Gender</font></b></td>
				<td>${item.gender}</td>
			</tr>
			<tr>
				<td><b><font color="blue">Email Address</font></b></td>
				<td>${item.emailaddress}</td>
			</tr>
			<tr>
				<td><b><font color="blue">Birth City</font></b></td>
				<td>${item.city}</td>
			</tr>
			<tr>
				<td><b><font color="blue">Birth Country</font></b></td>
				<td>${item.country}</td>
			</tr>
			<tr>
				<td><b><font color="blue">IOWA State Resident</font></b></td>
				<td>${item.iastateresident}</td>
			</tr>
			
		</table>
		<br />
		<hr style="text-align: left; margin-left: 0; width: 25%">
		<br />
	</c:forEach>
	<center>
		<a href = "form.mvc"><input type = "submit" value="Add New Student"></a>
	</center>
</body>
</html>