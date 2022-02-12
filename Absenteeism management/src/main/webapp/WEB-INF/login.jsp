<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<style><%@include file="/WEB-INF/index.css"%></style>
	<title>Gestion des absences</title>
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
	
	
</head>
<body>
	<!--Header-->
	<header class="head">

		
		<div class="logo"><span class="log">G</span>ESTION <span class="log">D</span>ES <span class="log">A</span>BSENCE </div>
		
		<nav class="sign">

			<div class="fontt">New User ?</div><a href="creerCompte.html" target="_blank">Sign Up</a>
			

		</nav>
	
		</header>
			<div class="espace"> 
		<br>
		<br>
		<br>
		<br>


	</div>
	<!--main body-->
	<section class="mainbody">
		<div id="container">
			<section class="image">

				<img src="C:\Users\PC-DELL\OneDrive\Documents\Absenteeism management\src\main\webapp\WEB-INF\image2.png" class="image2">

			</section>



			<section class="forom">







				<h1 class="titre">Welcome Back!</h1>	

				<div class="lestitres">
					<h4 class="soustitre">   Login to continue</h4>
				</div>


				<form action="index" method="post" class="login_form"   >
					
					


					<!--name-->

					<input type="text" id="username" required name="username" placeholder="UserName" />

					<div class="email_error"> </div>
					<br>
					
					<!--passwort-->

					<input  id="password" required type="password" name="password" placeholder="PassWord" />
					<div class="password_error">
					
					
					<h1 id="msg"><c:out value="${msg }"></c:out></h1>
					
					</div>

				</div>
				<!--submit-->
				<br>
				<br>
				<div>

					<button class="input" id="login">Login</button>
				</div>
				<!--Forget-->



				




				<a class="Forgot" class="font" href="">Forget PassWord</a>




			</form>
		</section>

	</section>
	


</div>
<br>
<br>





<footer>

	<section class="icon">
		<a href="#" class="fa fa-facebook"></a>
		<a href="#" class="fa fa-twitter"></a>
		<a href="#" class="fa fa-google"></a></section>



		<div class="contact">To Contact Us :</div>

	</footer>
	<script src="indxi.js" ></script>
</body>
</html>