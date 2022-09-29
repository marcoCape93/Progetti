<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<form action="findById-attore" method="get">
		<input type="hidden" name="id" value="2">
		<button type="submit">Info Attore</button>
	</form>
	<br>
	<form action="findById-film" method="get">
		<input type="hidden" name="id" value="5">
	</form>
	<!-- <form action="findById-film" method="get">
		<input type="hidden" name="id" value="1">
>>>>>>> branch 'master' of https://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@github.com/marcoCape93/Progetto-Cinema.git
		<button type="submit">Info Film</button>
		</form> -->

	<br>
	<form action="findCognome-attore" method="get">
		<input type="text" name="cognome">
		<button type="submit">Cerca</button>
	</form>
</body>
</html>