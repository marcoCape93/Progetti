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

<div class="space">
	
	<div class="row text-center">
	<div class="col">
	<table class="tabella table table-dark table-striped" style="margin-top: 60px">
		<thead>
			<tr>
				<th></th>
				<th>Nome</th>
				<th>Cognome</th>
				<th>Nascita</th>
				<th>Nazione</th>
				
				
				<!-- <th>filmografia</th> -->
				
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${attori}" var="a">
				<tr class="riga">
					<td>
							<form action="findById-attore" method="get">
							<input type="hidden" name="id" value="${a.id}">
							<input type="hidden" name="idUtente" value="${utente.id }">
							
							<div class="foto">
								<input type="image" src="${a.foto}" value="${a.id}" name="id" alt="Foto per ${a.nome} ${a.cognome}">
							</div>
							
							</form>

						
					</td>
					<td><c:out value="${a.nome}" /></td>
					<td><c:out value="${a.cognome}" /></td>
					<td><c:out value="${a.dataNascita}" /></td>
					<td><c:out value="${a.luogoNascita}" /></td>
					
					
				</tr>
			</c:forEach>
		</tbody>
	</table>
	</div>
	</div>
	</div>
	</div>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js" 
	integrity="sha384-u1OknCvxWvY5kfmNBILK2hRnQC3Pr17a+RTT6rIHI7NnikvbZlHgTPOOmMi466C8" crossorigin="anonymous"></script> 
</body>
</html>