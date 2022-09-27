<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>        
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title></title>
</head>
<body>
	<div>
		<form action="LoginServlet" method="post">
			<label for="username" class="">Username</label>
			<input class="" type="text" name="username" required>
			<c:if test="${errUser != null}">
				<span class="">
					<c:out value="${errUser}"/>
				</span>
			</c:if>
			<label for="password" class="">Password</label>
			<input class="" type="password" name="password" required>
			<c:if test="${errPass != null}">
				<span class="">
					<c:out value="${errPass}"/>
				</span>
			</c:if>
			<button class="" type="submit">Login</button>
		</form>
	</div>
	<div>
		<form action="GuestServlet" method="post">
			<button type="submit">Continua come Ospite</button>
		</form>
		<a href="registration.jsp"><button>Registrati</button></a>
	</div>
</body>
</html>