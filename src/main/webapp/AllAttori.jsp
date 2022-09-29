<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Insert title here</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="styleAllFilm.css">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet"
 		integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
	<script src="https://unpkg.com/htmlincludejs"></script>
	<include src="./navbar.html"></include>
	
	</head>
<body style="background-color: #1E1D1D">

<div class="container-fluid">
<%-- 	<div class="row">
		<div class="col">
			<span style="color: black;"><c:out value="${username}"></c:out></span>
			<form action="logout" method="post">
				<button type="submit">Logout</button>
			</form>
		</div>
		<div class="col">
			<form action="AnnoFilmServlet" method="get">
			<label for="anno">Anno</label>
			<select name="anno">
				<option>Seleziona..</option>
				<c:forEach items="${anni}" var="f">
				<option value="${f}">${f}</option>
				</c:forEach>
			</select>
			<button type="submit">Cerca</button>	
			</form>
		</div>	
		<div class="col">
			<form action="find-by-genere" method="get">
			<label for="genere">Genere</label>
			<select name="genere">
				<option >Seleziona..</option>
				<c:forEach items="${generi}" var="f">
				<option value="${f}">${f}</option>
				</c:forEach>
			</select>
			<button type="submit">Cerca</button>
			</form>
		</div>
	</div> --%>
	
	<div class="row justify-content-center">
	
	<div class="col-6">
	
	<table class="tabella table table-dark table-striped" >
		<thead>
			<tr>
				<th>foto</th>
				
				<th>Nome</th>
				<th>Cognome</th>
				<th>Data di nascita</th>
				<th>Luogo di nascita</th>
				<th>Biografia</th>
				
				<!-- <th>filmografia</th> -->
				
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${attori}" var="a">
				<tr class="riga">
					<td>
							<form action="findById-attore" method="get">
							<input type="hidden" name="id" value="${a.id}">
							
							<div class="foto">
								<input type="image" src="${a.foto}" value="${a.id}" name="id" alt="Foto per ${a.nome} ${a.cognome}">
							</div>
							
							</form>

						
					</td>
					<td><c:out value="${a.nome}" /></td>
					<td><c:out value="${a.cognome}" /></td>
					<td><c:out value="${a.dataNascita}" /></td>
					<td><c:out value="${a.luogoNascita}" /></td>
					<td><c:out value="${a.biografia}" /></td>
					
				</tr>
			</c:forEach>
		</tbody>
	</table>
	</div>
	</div>
	</div>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js" 
	integrity="sha384-u1OknCvxWvY5kfmNBILK2hRnQC3Pr17a+RTT6rIHI7NnikvbZlHgTPOOmMi466C8" crossorigin="anonymous"></script> 
</body>
</html>