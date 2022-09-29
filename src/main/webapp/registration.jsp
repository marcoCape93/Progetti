<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>            
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div>
		<form action="RegistrationServlet" method="post">
			<label for="mail" class="">Mail</label>
			<input class="" type="text" name="mail" required>
			<c:if test="${errMail != null}">
				<span class="">
					<c:out value="${errMail}"/>
				</span>
			</c:if>
			<span id="closeSpan"><c:out value="${errGmail2}"/></span>
			<label for="nome" class="">Nome</label>
			<input class="" type="text" name="nome" required>
			<c:if test="${errNome != null}">
				<span class="">
					<c:out value="${errNome}"/>
				</span>
			</c:if>
			<label for="cognome" class="">Cognome</label>
			<input class="" type="text" name="cognome" required>
			<c:if test="${errCognome != null}">
				<span class="">
					<c:out value="${errCognome}"/>
				</span>
			</c:if>
			<label for="username" class="">Username</label>
			<input class="" type="text" name="username" required>
			<c:if test="${errUser != null}">
				<span class="">
					<c:out value="${errUser}"/>
				</span>
			</c:if>
			<span id="closeSpan2"><c:out value="${errUser2}"/></span>
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