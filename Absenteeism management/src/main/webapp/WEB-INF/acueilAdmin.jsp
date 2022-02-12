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
<li class="service"><a class="active" href="acueilAdmin2">Home</a></li>
  <li class="service"><a href="http://localhost:8080/Absenteeism management/AddStudentServlet">List of Teachers</a></li>
  <li class="service"><a href="listUser">List of Students</a></li>
  <li class="service"><a href="listUser">List of Admins</a></li>
  
</ul>
<br>

		
	</header>
	<br>

	<div class="row">
		<!-- <div class="alert alert-success" *ngIf='message'>{{message}}</div> -->

		<div class="container">
			<h3 class="text-center">List of Student</h3>
			<hr>
			<c:if test="${!empty sessionScope.admin}">
			<div class="container text-left">

				<a href="<%=request.getContextPath()%>/new" class="btn btn-success">Add
					New Students</a>
			</div>
			<form action="listbygrp" method="post">
			</c:if>
			<c:if test="${!empty sessionScope.prof}">
			<input type="date" id="date"  name="date" >
			
			</c:if>

<form action="listbygrp" method="post">
 <div class="category">
    Select Group:&nbsp;
   
    <select name="category">
        <c:forEach items="${listgroup}" var="category">
            <option value="${category}">${category}</option>
        </c:forEach>
        
    </select>

    <input  class="input" type="submit" value="Get List" />
  
    </div>
	</form>
			
	
		
					
			<br>
			<table class="table table-bordered">
				<thead>
					<tr>
						<th>ID</th>
						<th>Name</th>
						<th>Email</th>
						<th>Group</th>
						<th>Actions</th>
					</tr>
				</thead>
				<tbody>
				
					<c:forEach var="user" items="${listUser}">

						<tr>
							<td><c:out value="${user.id}" /></td>
							<td><c:out value="${user.name}" /></td>
							<td><c:out value="${user.email}" /></td>
							<td><c:out value="${user.groupe}" /></td>
							
							<td>
								<c:if test="${!empty sessionScope.admin}">
							<a href="edit?id=<c:out value='${user.id}' />"><input  class="input" type="button" value="Edit"></a>
								&nbsp;&nbsp;&nbsp;&nbsp;
								 <a href="delete?id=<c:out value='${user.id}' />"><input  class="input" type="button" value="Delete"></a>
							</c:if>
							
							
							
						<c:if test="${!empty sessionScope.prof}">	
				
						
							<select  name="abcence">
   
            <option id="green" value="${category}">Present</option>
          <option id="red" value="${category}">Absent</option>
        
    </select>

		</c:if>					
							
							
							
							
							
							
							
							</td>
						</tr>
					</c:forEach>
		
				</tbody>

			</table>
			
		</div>
    <div class="col-md-10 col-sm-9 col-xs-12 col-md-push-2 col-sm-push-3 col-xs-push-0">
                                <input class=" btn-primary" type="submit" value="Save">
                            </div>
	</div>
	
</body>
</html>