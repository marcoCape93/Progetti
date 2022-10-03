<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title></title>
<link rel="stylesheet" href="styles-register.css">

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
			<div class="col align-self-center"></div>
			<div class="col align-self-center" id="login">
			<div class="rettangolo" id="rettangolo">
				<form action="RegistrationServlet" method="post">
					<br>
					<label for="mail" class="">Email</label> 
					<br>
					<input class="" type="text" name="mail" required>
					<c:if test="${errMail != null}">
						<span class=""> <c:out value="${errMail}" />
						</span>
					</c:if>
					<div>
					<span id="closeSpan" style="color:red "><c:out value="${errGmail2}"/></span>
					</div>
					<label for="nome" class="">Nome</label> 
					<br>
					<input class="" type="text" name="nome" required>
					<c:if test="${errNome != null}">
						<span class=""> <c:out value="${errNome}" />
						</span>
					</c:if>
					<br>
					
					<label for="cognome" class="">Cognome</label> 
					<br>
					<input class="" type="text" name="cognome" required>
					<c:if test="${errCognome != null}">
						<span class=""> <c:out value="${errCognome}" />
						</span>
					</c:if>
					<br>
					
					<label for="username" class="">Username</label> 
					<br>
					<input class="" type="text" name="username" >
					<c:if test="${errUser != null}">
						<span class=""> <c:out value="${errUser}" />
						</span>
					</c:if>
					<div>
					<span  id="closeSpan2" style="color: red"><c:out value="${errUser2}"/></span>
					</div>
					<label for="password" class="">Password</label> 
					<br>
					<input class="" type="password" name="password" required>
					<c:if test="${errPass != null}">
						<span class=""> <c:out value="${errPass}" />
						</span>
					</c:if>
					<br><br>
					<button class="button1" type="submit">Registrati</button>
				</form>
				<a href="login.jsp"><button class="button2 btn btn-sm">Indietro</button></a>
				<br>
				</div>
			</div>
			<div class="col align-self-center"></div>
		</div>
	</div>

		<script
			src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js"
			integrity="sha384-u1OknCvxWvY5kfmNBILK2hRnQC3Pr17a+RTT6rIHI7NnikvbZlHgTPOOmMi466C8"
			crossorigin="anonymous"></script>
			<script type="text/javascript">
		setTimeout(function(){
			var x = document.getElementById("closeSpan");
			x.parentNode.removeChild(x);
	        var y = document.getElementById("closeSpan2");
			y.parentNode.removeChild(y);
		},3000);
	</script>
</body>
</html>