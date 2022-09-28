<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action="AddVoto" method="post">
		<input type="text" name="voto">
		<input type="hidden" name="id-film" value="1">
		<input type="hidden" name="id-utente" value="2">
		<button type="submit">voto</button>
	</form>
</body>
</html>