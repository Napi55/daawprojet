<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>User Management Application</title>
  
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
		<link rel="stylesheet" type="text/css" href="/WEB-INF/user-list.css">
	
		<style><%@include file="/WEB-INF/header2.css"%></style>
<style><%@include file="/WEB-INF/header.css"%></style>
<style><%@include file="/WEB-INF/acueilAdmin.css"%></style>
</head>
<body>

	<header>
	<jsp:include page="header.jsp"/>

<br>
<br>
<br>	
  <br>	  
 <ul id="serv">
 <li class="service"><a class="active" href="acueilAdmin2.jsp">Home</a></li>
  <li class="service"><a href="http://localhost:8080/Absenteeism management/AddStudentServlet">List of Teachers</a></li>
  <li class="service"><a href="listUser">List of Students</a></li>
  <li class="service"><a href="listUser">List of Admins</a></li>
  
</ul>
<br>

		
	</header>
	<br>
	<br>
<br>


<c:if test="${!empty sessionScope.admin}">
   <h1 id="fl">Welcome Admin <br>     <span id="fl1"> ${admin.firstname} ${admin.lastname}</span></h1>
   
</c:if>	
<br>
<br>
<br>

</body>
</html>