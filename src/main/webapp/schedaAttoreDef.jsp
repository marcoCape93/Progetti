<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Pagina Attore</title>
<link rel="stylesheet" href="styles-film.css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT"
	crossorigin="anonymous">

<link href='https://fonts.googleapis.com/css?family=Questrial'
	rel='stylesheet'>
	
	   <script src="https://unpkg.com/htmlincludejs"></script>
	   
	   <include src="./navbar.html"></include>

</head>
<body>
	<div class="background-image">
		<div class="container-fluid">
			<div class="row">
				<div class="col lg-4">
					<div class="poster" style="margin-left: -12px">
						<img alt="Locandina per ${attore.foto}" src="${attore.foto}">
					</div>
				</div>
				<div class="col lg-8" id="info-film">
					<div class="info" style="margin-top: -40px">
						<div class="movie-title">
							<c:out value="${attore.nome}" /> <c:out value="${attore.cognome}" />
						</div>
						<div class="movie-detail">
							<br>
							<div class="set">
								<label>Data di nascita</label>
								<c:out value="${attore.dataNascita}" />
							</div>
							<div class="set">
								<label>Luogo di nascita</label>
								<c:out value="${attore.luogoNascita}" />
							</div>
							<br>
							<div class="set">
								<label>Biografia</label>
								<c:out value="${attore.biografia}" />
							</div>
						</div>

						<div class="movie-cast">
							<br>
							<div class="header">Filmografia</div>
							<div class="list" style="margin-top: -20px">
								<c:forEach items="${attore.filmografia}" var="f">
									<div class="foto-dati">
										<div class="foto">
											<img alt="Locandina per ${f.film.locandina}"
												src="${f.film.locandina}">
										</div>
										<div class="dati">
											<c:out value="${f.film.titolo}" />
											(<c:out value="${f.film.anno}" />)
										</div>
									</div>
								</c:forEach>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-u1OknCvxWvY5kfmNBILK2hRnQC3Pr17a+RTT6rIHI7NnikvbZlHgTPOOmMi466C8"
		crossorigin="anonymous"></script>
</body>
</html>
