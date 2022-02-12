<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>header</title>
	<style><%@include file="/WEB-INF/header.css"%></style>
	<script src="https://kit.fontawesome.com/b99e675b6e.js"></script>
</head>
<body>

<div class="wrapper">
	<div class="navbar">
		<div class="logo">
			<span class="log">G</span>ESTION <span class="log">D</span>ES <span class="log">A</span>BSENCE 
		</div>
		<div class="nav_right">
			<ul>
				<li class="nr_li dd_main">
					<img src="C:\Users\PC-DELL\OneDrive\Documents\Absenteeism management\src\main\webapp\WEB-INF\download.png" alt="profile_img">
					
					<div class="dd_menu">
						<div class="dd_left">
							<ul>
								
								<li><i class="fas fa-cog"></i></li>
								<li><i class="fas fa-user"></i></li>
								<li><i class="fas fa-sign-out-alt"></i></li>
							</ul>
						</div>
						<div class="dd_right">
							<ul>
								
								<li><a class="tag" href="http://localhost:8080/Absenteeism_management/index">Home</a></li>
								<li><a class="tag" href="http://localhost:8080/Absenteeism_management/UpdateStudentsServlet">profil</a></li>
								<li><a class="tag" href="http://localhost:8080/Absenteeism_management/logoutServlet">Logout</a></li>
							</ul>
						</div>
					</div>
				</li>
				<li class="nr_li">
					<div><c:out value="${prof.firstname } ${ prof.lastname}  ">user name</c:out>         </div>
						<div><c:out value="${admin.firstname } ${ admin.lastname}  ">admin name</c:out>         </div>
				</li>
			</ul>
		</div>
	</div>
</div>	

<script>
	var dd_main = document.querySelector(".dd_main");

	dd_main.addEventListener("click", function(){
		this.classList.toggle("active");
	})
</script>
	
</body>
</html>