<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="mvc"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Spring MVC Form Handling</title>
</head>
<style>
    h1 { color: red; }
    .fieldname {color: blue; }
  </style>
</head>
<body>
	<center><h1>Student Data Form</h1></center>
	<mvc:form modelAttribute="student" action="result.mvc">
		<center>
		<table>
			<tr>
				<td><mvc:label path="enrollmentid" class="fieldname"><b>Enrollment ID</b></mvc:label></td>
				<td><mvc:input path="enrollmentid" /></td>
			</tr>
			<tr>
				<td><mvc:label path="fullname" class="fieldname"><b>Full Name</b></mvc:label></td>
				<td><mvc:input path="fullname" /></td>
			</tr>
			<tr>
				<td><mvc:label path="gender" class="fieldname"><b>Gender</b></mvc:label></td>
				<td><mvc:radiobuttons path="gender" /></td>
			</tr>
			<tr>
				<td><mvc:label path="emailaddress" class="fieldname"><b>Email Address</b></mvc:label></td>
				<td><mvc:input path="emailaddress" /></td>
			</tr>
			<tr>
				<td><mvc:label path="city" class="fieldname"><b>Birth City</b></mvc:label></td>
				<td><mvc:input path="city" /></td>
			</tr>
			<tr>
				<td><mvc:label path="country" class="fieldname"><b>Birth Country</b></mvc:label></td>
				<td><mvc:select path="country" items="${countries}" /></td>
			</tr>
			<tr>
				<td><mvc:label path="iastateresident" class="fieldname"><b>IOWA State Resident</b></mvc:label></td>
				<td><mvc:checkbox path="iastateresident" /></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="Submit" /></td> 
			</tr>
		</table>
		</center>
	</mvc:form>
	<center>
		<a href = "viewAll.mvc"><input type = "submit" value="View Student List"></a>
	</center>
</body>
</html>