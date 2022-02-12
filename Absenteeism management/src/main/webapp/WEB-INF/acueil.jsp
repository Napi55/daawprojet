<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<title>acueil</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<style><%@include file="/WEB-INF/acueil.css"%>
	<%@include file="/WEB-INF/header2.css"%>
	</style>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

	<style>
		@import url('https://fonts.googleapis.com/css2?family=Open+Sans:wght@700&display=swap');
	</style>
	<style>
		@import url('https://fonts.googleapis.com/css2?family=Road+Rage&display=swap');
	</style>
	<style>
		@import url('https://fonts.googleapis.com/css2?family=Open+Sans&display=swap');
	</style>
	<link rel="stylesheet" href="creerCompte.css">
  <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
	<title></title>
	<link rel="preconnect" href="https://fonts.gstatic.com">
  <link href="https://fonts.googleapis.com/css2?family=Lato:wght@300;400;700;900&family=Mukta:wght@300;400;600;700;800&family=Noto+Sans:wght@400;700&display=swap" rel="stylesheet">

</head>
<body>
	<!--Header-->
	<%@include file="/WEB-INF/header.jsp"%>
	<br>
	<br>
<!--mianbody-->
		<div id="1"></div>
		<section class="mainbody">
			<section class="image1">
				<div class="image">
				
				</div>
			</section>
		
			<section class="text">
	<div id="text">
	<h1><span id="welcom">Welcome in</span><div id="title" ><span class="log">G</span>ESTION <span class="log">D</span>ES <span class="log">A</span>BSENCE </div></h1>

	<p>Attendance management site at the College of Modern Technology</p>
	
	</div>

				</section>

			</section>

			<br>
			<br>

<br>
<c:if test="${!empty sessionScope.prof}">
 
  <br>	  
 <ul id="serv">
 <li class="service"><a class="active" href="http://localhost:8080/Absenteeism management/index">Home</a></li>
  <li class="service"><a href="http://localhost:8080/Absenteeism management/AddStudentServlet">Add Student</a></li>
  <li class="service"><a href="http://localhost:8080/Absenteeism_management/ListStudentsServlet">List of Students</a></li>

  
</ul>
<br>
<br>
</c:if>	

<c:if test="${!empty sessionScope.prof}">
   <h1 id="fl">Welcome ${prof.firstname} ${prof.lastname}</h1>
   
</c:if>	
<br>
<br>
<br>
 

	




  <footer class="footer">
     <div class="container">
        <div class="row">
            <div class="footer-col">
                <h4>Srevice</h4>
                <ul>
                    <li><a href="#">Add Student</a></li>
                    <li><a href="#">Delete Student</a></li>
                    <li><a href="#">show list of student</a></li>
                   
                </ul>
            </div>
            <div class="footer-col">
                <h4>Help</h4>
                <ul>
                    <li><a href="#">FAQ</a></li>
                    <li><a href="#">shipping</a></li>
                    
            </div>
            <div class="footer-col">
                <h4>Contact</h4>
                <ul>
                    <li><a href="#">TL:025485145</a></li>
                    
                </ul>
            </div>
            <div class="footer-col">
                <h4>follow us</h4>
                <div class="social-links">
                    <a href="#"><i class="fab fa-facebook-f"></i></a>
                    <a href="#"><i class="fab fa-twitter"></i></a>
                    <a href="#"><i class="fab fa-instagram"></i></a>
                    <a href="#"><i class="fab fa-linkedin-in"></i></a>
                </div>
            </div>
        </div>
     </div>
  </footer>


		</body>
		</html>