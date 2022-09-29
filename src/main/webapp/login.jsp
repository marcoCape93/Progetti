<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title></title>
<link rel="stylesheet" href="styles-login.css">

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT"
	crossorigin="anonymous">

<link href='https://fonts.googleapis.com/css?family=Questrial'
	rel='stylesheet'>

</head>
<body>
	<div class="container-fluid text-center">
		<div class="row align-items-center">
			<div class="col align-self-center">
			</div>
			<div class="col align-self-center" id="login">
				<div class=rettangolo" id="rettangolo">
				<br>
				<label for="username" class="username">Username</label> 
				<br>
				<input class="" type="text" name="username" required>
				<c:if test="${errUser != null}">
					<span class=""> <c:out value="${errUser}" />
					</span>
				</c:if>
				<br>
				<label for="password" class="">Password</label> 
				<br>
				<input class="" type="password" name="password" required>
				<c:if test="${errPass != null}">
					<span class=""> <c:out value="${errPass}" />
					</span>
				</c:if>
				<br><br>
				<button class="button1" type="submit">Login</button> <a href="registrationDef.jsp"><button class="button2">Registrati</button></a>
				<br><br>
				<form action="GuestServlet" method="post" class="ospite">
					<button class="button3" type="submit">Continua come ospite</button>
			    </form>
			    <br>
			    </div>
			</div>
			<div class="col align-self-center">
			</div>
		</div>
	

		<script
			src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js"
			integrity="sha384-u1OknCvxWvY5kfmNBILK2hRnQC3Pr17a+RTT6rIHI7NnikvbZlHgTPOOmMi466C8"
			crossorigin="anonymous"></script>
			
</body>
</html>