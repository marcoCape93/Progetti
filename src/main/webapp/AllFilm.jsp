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
<body>
	<div class="container-fluid">
		<div class="row">
			<div class="col">
				<span style="color: black;"><c:out value="${username}"></c:out></span>
				<form action="logout" method="post">
					<button type="submit">Logout</button>
				</form>
			</div> 	
		<!--  <div style="margin-top:25px"class="row mt-5px">
			<form action="RicercaServlet" method="get">
			<div class="col-lg-4 md-2 sm-2">
				<label for="anni"></label>
					<select name="anni">
					<option value="0">Anno</option>
					<c:forEach items="${anni}" var="f">
						<option value="${f}">${f}</option>
					</c:forEach>
					</select> RICERCHE 
				</div>
				<div class="col-lg-4 md-2 sm-2">			
				<label for="generi"></label>
					<select name="generi">
					<option value="">Genere</option>
					<c:forEach items="${generi}" var="f">
						<option value="${f}">${f}</option>
					</c:forEach>
					</select>
				</div>	
				<div class="col-lg-4 md-1 sm-1">
				<label for="titoli"></label>
					<select name="titoli">
					<option value="">Titolo</option>
					<c:forEach items="${titoli}" var="f">
						<option value="${f}">${f}</option>
					</c:forEach>
					</select>
				</div>
				<div style="margin-left: 90%;;"class="col-lg-4 md-1 sm-1">		
					<button type="submit">Cerca</button>
				</div>
			</form>	
		</div> -->
	</div>
	<div class="col-6">
	<table class="tabella table table-dark table-striped">
		<thead>
			<tr>
				<th></th>
				<th>Titolo</th>
				<th>Anno</th>
				<th>Durata</th>
				
				
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${film}" var="f">
				<tr>
					<td>
						<div class="prova">
						<div class="tasto">
							<form action="findById-film" method="get">
							<input type="hidden" name="id" value="${f.id}">
							<input type="image" src="${f.locandina}" value="${f.id}" name="id" alt="Locandina per ${f.titolo}">
								
							</form>
						</div>
						</div>
						
					</td>
					<td><c:out value="${f.titolo}" /></td>
					<td><c:out value="${f.anno}" /></td>
					<td><c:out value="${f.durata}" /></td>
					
				</tr>
			</c:forEach>
		</tbody>
	</table>
	</div>
	</div>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js" 
	integrity="sha384-u1OknCvxWvY5kfmNBILK2hRnQC3Pr17a+RTT6rIHI7NnikvbZlHgTPOOmMi466C8" crossorigin="anonymous"></script> 
</body>
</html>