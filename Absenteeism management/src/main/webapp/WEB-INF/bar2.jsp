<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page pageEncoding="UTF-8"%>
    
   <%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<title>List of Users</title>
<style>
	<%@include file="/WEB-INF/header2.css"%>												
</style>
</head>

<body>


<%@include file="/WEB-INF/header.css"%>
<br>	
<c:if test="${!empty sessionScope.user}">
  <h1>Welcome ${user.firstname} ${user.lastname}</h1>
  <br>	  
 <ul>
  <li><a class="active" href="http://localhost:8080/Absenteeism management/index">Home</a></li>
  <li><a href="http://localhost:8080/Absenteeism management/AddStudentServlet">Add User</a></li>
  <li><a href="http://localhost:8080/Absenteeism management/ListStudentsServlet">List of Users</a></li>
  <li style="float:right"><a href="http://localhost:8080/Absenteeism management/logoutServlet">Logout</a></li>
</ul>
<br>
<br>
</c:if>	

<c:if test="${empty sessionScope.user}">
  <h1>Welcome to My Web Application</h1>
</c:if>	

 


</body>
</html>