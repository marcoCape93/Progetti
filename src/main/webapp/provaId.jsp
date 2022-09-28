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
		
		<!-- <form action="findById-film" method="get">
		<input type="hidden" name="id" value="1">
		<button type="submit">Info Film</button>
		</form> -->
		
		 <br>
		 <form action="findCognome-attore" method="get">
		 <input type="text" name="cognome">
		 <button type="submit">Cerca</button>
		 </form>
	
</body>
</html>