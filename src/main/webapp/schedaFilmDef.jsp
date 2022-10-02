<%@page import="org.generationitaly.progettocinema.entity.Utente"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Pagina Film</title>
<link rel="stylesheet" href="styles-film.css">
<link rel="stylesheet" href="rating.css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT"
	crossorigin="anonymous" />

<link href='https://fonts.googleapis.com/css?family=Questrial'
	rel='stylesheet'>

<script src="https://unpkg.com/htmlincludejs"></script>


<link href='https://unpkg.com/boxicons@2.1.1/css/boxicons.min.css'
	rel='stylesheet'>
</head>
<body style="background-color: #1E1D1D;">
 
<%@include file="./navbarDef.jsp" %>
	<!-- commento -->
	<div class="background-image">
		<div class="container-fluid">
			<div class="row">
				<div class="col lg-4">
					<div class="poster" style="margin-left: -12px">
						<img alt="Locandina per ${film.titolo}" src="${film.locandina}">
					</div>
				</div>
				<div class="col lg-8" id="info-film">
					<div class="info" style="margin-top: -40px">
						<div class="movie-title">
							<c:out value="${film.titolo}" />
						</div>
						<div class="movie-detail">
							<br>
							<div class="set">
								<label>Genere</label>
								<c:out value="${film.genere}" />
							</div>
							<div class="set">
								<label>Regista</label>
								<c:out value="${film.regista}" />
							</div>
							<div class="set">
								<label>Distribuzione</label>
								<c:out value="${film.distribuzione}" />
							</div>
							<br>
							<div class="set">
								<label>Paese</label>
								<c:out value="${film.paese}" />
							</div>
							<div class="set">
								<label>Anno</label>
								<c:out value="${film.anno}" />
							</div>
							<div class="set">
								<label>Durata</label>
								<c:out value="${film.durata} minuti" />
							</div>
							<div class="set">
								<label>Voto</label>
								<c:if test="${film.voto==-1}"><c:out value="-" /></c:if>
								<c:if test="${film.voto==1}"><img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAADgdz34AAAAAXNSR0IArs4c6QAAAZlJREFUSEu1Ve1RwkAQfctw+cIZtQOoAKxAqEDtACsQKxAq0A7UDuxA7EAqkBJwRpJcjmGdi4CBfF1EdiZ/kst7u/ve7hEOHHRgfFQiUL79DoCFJ89MEzMmiAKnT8yPGpiJri03fDIhMSZQvj0GcL4CHQtP9v6NQAVOF8yvW4BEPeGGmrQwjCpQvv0C4CKJxMzPViPq700QBE6zzvyRBbQgarluOC0i2VSwmFuXDLQZaBJRc/XTCYBOSZbaWbNYfOYpAfqZ1BuRrvrXpsq3uazcKt+FJ+PkNxUkbVgFKOts0sZbIu9NwvjkGg2SM5Jy0Z9JNDgvu9aR0ppsItOmlUlywLc02O2l8u0HADdGehQMXe6g7ayGQh4Gbi1P6oRSUURQxbZvwpNdY4LM3VPSq7qUp3T6M3DlIvv2gID7FCbTKH5HfJcCYr5aT28pQcZym/By2V9bMPoSHarV9H3QXoPlLb9MDdTcnoFwHP/MNBKNcJjVITV3hutqGJhanmwZtWh1NSKZdZ4EiWogPJlajEb3gdEs5Bw6OME3EmKxGXss48wAAAAASUVORK5CYII="/></c:if>
								<c:if test="${film.voto==2}"><img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAADgdz34AAAAAXNSR0IArs4c6QAAAZlJREFUSEu1Ve1RwkAQfctw+cIZtQOoAKxAqEDtACsQKxAq0A7UDuxA7EAqkBJwRpJcjmGdi4CBfF1EdiZ/kst7u/ve7hEOHHRgfFQiUL79DoCFJ89MEzMmiAKnT8yPGpiJri03fDIhMSZQvj0GcL4CHQtP9v6NQAVOF8yvW4BEPeGGmrQwjCpQvv0C4CKJxMzPViPq700QBE6zzvyRBbQgarluOC0i2VSwmFuXDLQZaBJRc/XTCYBOSZbaWbNYfOYpAfqZ1BuRrvrXpsq3uazcKt+FJ+PkNxUkbVgFKOts0sZbIu9NwvjkGg2SM5Jy0Z9JNDgvu9aR0ppsItOmlUlywLc02O2l8u0HADdGehQMXe6g7ayGQh4Gbi1P6oRSUURQxbZvwpNdY4LM3VPSq7qUp3T6M3DlIvv2gID7FCbTKH5HfJcCYr5aT28pQcZym/By2V9bMPoSHarV9H3QXoPlLb9MDdTcnoFwHP/MNBKNcJjVITV3hutqGJhanmwZtWh1NSKZdZ4EiWogPJlajEb3gdEs5Bw6OME3EmKxGXss48wAAAAASUVORK5CYII="/><img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAADgdz34AAAAAXNSR0IArs4c6QAAAZlJREFUSEu1Ve1RwkAQfctw+cIZtQOoAKxAqEDtACsQKxAq0A7UDuxA7EAqkBJwRpJcjmGdi4CBfF1EdiZ/kst7u/ve7hEOHHRgfFQiUL79DoCFJ89MEzMmiAKnT8yPGpiJri03fDIhMSZQvj0GcL4CHQtP9v6NQAVOF8yvW4BEPeGGmrQwjCpQvv0C4CKJxMzPViPq700QBE6zzvyRBbQgarluOC0i2VSwmFuXDLQZaBJRc/XTCYBOSZbaWbNYfOYpAfqZ1BuRrvrXpsq3uazcKt+FJ+PkNxUkbVgFKOts0sZbIu9NwvjkGg2SM5Jy0Z9JNDgvu9aR0ppsItOmlUlywLc02O2l8u0HADdGehQMXe6g7ayGQh4Gbi1P6oRSUURQxbZvwpNdY4LM3VPSq7qUp3T6M3DlIvv2gID7FCbTKH5HfJcCYr5aT28pQcZym/By2V9bMPoSHarV9H3QXoPlLb9MDdTcnoFwHP/MNBKNcJjVITV3hutqGJhanmwZtWh1NSKZdZ4EiWogPJlajEb3gdEs5Bw6OME3EmKxGXss48wAAAAASUVORK5CYII="/></c:if>
								<c:if test="${film.voto==3}"><img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAADgdz34AAAAAXNSR0IArs4c6QAAAZlJREFUSEu1Ve1RwkAQfctw+cIZtQOoAKxAqEDtACsQKxAq0A7UDuxA7EAqkBJwRpJcjmGdi4CBfF1EdiZ/kst7u/ve7hEOHHRgfFQiUL79DoCFJ89MEzMmiAKnT8yPGpiJri03fDIhMSZQvj0GcL4CHQtP9v6NQAVOF8yvW4BEPeGGmrQwjCpQvv0C4CKJxMzPViPq700QBE6zzvyRBbQgarluOC0i2VSwmFuXDLQZaBJRc/XTCYBOSZbaWbNYfOYpAfqZ1BuRrvrXpsq3uazcKt+FJ+PkNxUkbVgFKOts0sZbIu9NwvjkGg2SM5Jy0Z9JNDgvu9aR0ppsItOmlUlywLc02O2l8u0HADdGehQMXe6g7ayGQh4Gbi1P6oRSUURQxbZvwpNdY4LM3VPSq7qUp3T6M3DlIvv2gID7FCbTKH5HfJcCYr5aT28pQcZym/By2V9bMPoSHarV9H3QXoPlLb9MDdTcnoFwHP/MNBKNcJjVITV3hutqGJhanmwZtWh1NSKZdZ4EiWogPJlajEb3gdEs5Bw6OME3EmKxGXss48wAAAAASUVORK5CYII="/><img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAADgdz34AAAAAXNSR0IArs4c6QAAAZlJREFUSEu1Ve1RwkAQfctw+cIZtQOoAKxAqEDtACsQKxAq0A7UDuxA7EAqkBJwRpJcjmGdi4CBfF1EdiZ/kst7u/ve7hEOHHRgfFQiUL79DoCFJ89MEzMmiAKnT8yPGpiJri03fDIhMSZQvj0GcL4CHQtP9v6NQAVOF8yvW4BEPeGGmrQwjCpQvv0C4CKJxMzPViPq700QBE6zzvyRBbQgarluOC0i2VSwmFuXDLQZaBJRc/XTCYBOSZbaWbNYfOYpAfqZ1BuRrvrXpsq3uazcKt+FJ+PkNxUkbVgFKOts0sZbIu9NwvjkGg2SM5Jy0Z9JNDgvu9aR0ppsItOmlUlywLc02O2l8u0HADdGehQMXe6g7ayGQh4Gbi1P6oRSUURQxbZvwpNdY4LM3VPSq7qUp3T6M3DlIvv2gID7FCbTKH5HfJcCYr5aT28pQcZym/By2V9bMPoSHarV9H3QXoPlLb9MDdTcnoFwHP/MNBKNcJjVITV3hutqGJhanmwZtWh1NSKZdZ4EiWogPJlajEb3gdEs5Bw6OME3EmKxGXss48wAAAAASUVORK5CYII="/><img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAADgdz34AAAAAXNSR0IArs4c6QAAAZlJREFUSEu1Ve1RwkAQfctw+cIZtQOoAKxAqEDtACsQKxAq0A7UDuxA7EAqkBJwRpJcjmGdi4CBfF1EdiZ/kst7u/ve7hEOHHRgfFQiUL79DoCFJ89MEzMmiAKnT8yPGpiJri03fDIhMSZQvj0GcL4CHQtP9v6NQAVOF8yvW4BEPeGGmrQwjCpQvv0C4CKJxMzPViPq700QBE6zzvyRBbQgarluOC0i2VSwmFuXDLQZaBJRc/XTCYBOSZbaWbNYfOYpAfqZ1BuRrvrXpsq3uazcKt+FJ+PkNxUkbVgFKOts0sZbIu9NwvjkGg2SM5Jy0Z9JNDgvu9aR0ppsItOmlUlywLc02O2l8u0HADdGehQMXe6g7ayGQh4Gbi1P6oRSUURQxbZvwpNdY4LM3VPSq7qUp3T6M3DlIvv2gID7FCbTKH5HfJcCYr5aT28pQcZym/By2V9bMPoSHarV9H3QXoPlLb9MDdTcnoFwHP/MNBKNcJjVITV3hutqGJhanmwZtWh1NSKZdZ4EiWogPJlajEb3gdEs5Bw6OME3EmKxGXss48wAAAAASUVORK5CYII="/></c:if>
								<c:if test="${film.voto==4}"><img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAADgdz34AAAAAXNSR0IArs4c6QAAAZlJREFUSEu1Ve1RwkAQfctw+cIZtQOoAKxAqEDtACsQKxAq0A7UDuxA7EAqkBJwRpJcjmGdi4CBfF1EdiZ/kst7u/ve7hEOHHRgfFQiUL79DoCFJ89MEzMmiAKnT8yPGpiJri03fDIhMSZQvj0GcL4CHQtP9v6NQAVOF8yvW4BEPeGGmrQwjCpQvv0C4CKJxMzPViPq700QBE6zzvyRBbQgarluOC0i2VSwmFuXDLQZaBJRc/XTCYBOSZbaWbNYfOYpAfqZ1BuRrvrXpsq3uazcKt+FJ+PkNxUkbVgFKOts0sZbIu9NwvjkGg2SM5Jy0Z9JNDgvu9aR0ppsItOmlUlywLc02O2l8u0HADdGehQMXe6g7ayGQh4Gbi1P6oRSUURQxbZvwpNdY4LM3VPSq7qUp3T6M3DlIvv2gID7FCbTKH5HfJcCYr5aT28pQcZym/By2V9bMPoSHarV9H3QXoPlLb9MDdTcnoFwHP/MNBKNcJjVITV3hutqGJhanmwZtWh1NSKZdZ4EiWogPJlajEb3gdEs5Bw6OME3EmKxGXss48wAAAAASUVORK5CYII="/><img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAADgdz34AAAAAXNSR0IArs4c6QAAAZlJREFUSEu1Ve1RwkAQfctw+cIZtQOoAKxAqEDtACsQKxAq0A7UDuxA7EAqkBJwRpJcjmGdi4CBfF1EdiZ/kst7u/ve7hEOHHRgfFQiUL79DoCFJ89MEzMmiAKnT8yPGpiJri03fDIhMSZQvj0GcL4CHQtP9v6NQAVOF8yvW4BEPeGGmrQwjCpQvv0C4CKJxMzPViPq700QBE6zzvyRBbQgarluOC0i2VSwmFuXDLQZaBJRc/XTCYBOSZbaWbNYfOYpAfqZ1BuRrvrXpsq3uazcKt+FJ+PkNxUkbVgFKOts0sZbIu9NwvjkGg2SM5Jy0Z9JNDgvu9aR0ppsItOmlUlywLc02O2l8u0HADdGehQMXe6g7ayGQh4Gbi1P6oRSUURQxbZvwpNdY4LM3VPSq7qUp3T6M3DlIvv2gID7FCbTKH5HfJcCYr5aT28pQcZym/By2V9bMPoSHarV9H3QXoPlLb9MDdTcnoFwHP/MNBKNcJjVITV3hutqGJhanmwZtWh1NSKZdZ4EiWogPJlajEb3gdEs5Bw6OME3EmKxGXss48wAAAAASUVORK5CYII="/><img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAADgdz34AAAAAXNSR0IArs4c6QAAAZlJREFUSEu1Ve1RwkAQfctw+cIZtQOoAKxAqEDtACsQKxAq0A7UDuxA7EAqkBJwRpJcjmGdi4CBfF1EdiZ/kst7u/ve7hEOHHRgfFQiUL79DoCFJ89MEzMmiAKnT8yPGpiJri03fDIhMSZQvj0GcL4CHQtP9v6NQAVOF8yvW4BEPeGGmrQwjCpQvv0C4CKJxMzPViPq700QBE6zzvyRBbQgarluOC0i2VSwmFuXDLQZaBJRc/XTCYBOSZbaWbNYfOYpAfqZ1BuRrvrXpsq3uazcKt+FJ+PkNxUkbVgFKOts0sZbIu9NwvjkGg2SM5Jy0Z9JNDgvu9aR0ppsItOmlUlywLc02O2l8u0HADdGehQMXe6g7ayGQh4Gbi1P6oRSUURQxbZvwpNdY4LM3VPSq7qUp3T6M3DlIvv2gID7FCbTKH5HfJcCYr5aT28pQcZym/By2V9bMPoSHarV9H3QXoPlLb9MDdTcnoFwHP/MNBKNcJjVITV3hutqGJhanmwZtWh1NSKZdZ4EiWogPJlajEb3gdEs5Bw6OME3EmKxGXss48wAAAAASUVORK5CYII="/><img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAADgdz34AAAAAXNSR0IArs4c6QAAAZlJREFUSEu1Ve1RwkAQfctw+cIZtQOoAKxAqEDtACsQKxAq0A7UDuxA7EAqkBJwRpJcjmGdi4CBfF1EdiZ/kst7u/ve7hEOHHRgfFQiUL79DoCFJ89MEzMmiAKnT8yPGpiJri03fDIhMSZQvj0GcL4CHQtP9v6NQAVOF8yvW4BEPeGGmrQwjCpQvv0C4CKJxMzPViPq700QBE6zzvyRBbQgarluOC0i2VSwmFuXDLQZaBJRc/XTCYBOSZbaWbNYfOYpAfqZ1BuRrvrXpsq3uazcKt+FJ+PkNxUkbVgFKOts0sZbIu9NwvjkGg2SM5Jy0Z9JNDgvu9aR0ppsItOmlUlywLc02O2l8u0HADdGehQMXe6g7ayGQh4Gbi1P6oRSUURQxbZvwpNdY4LM3VPSq7qUp3T6M3DlIvv2gID7FCbTKH5HfJcCYr5aT28pQcZym/By2V9bMPoSHarV9H3QXoPlLb9MDdTcnoFwHP/MNBKNcJjVITV3hutqGJhanmwZtWh1NSKZdZ4EiWogPJlajEb3gdEs5Bw6OME3EmKxGXss48wAAAAASUVORK5CYII="/></c:if>
								<c:if test="${film.voto==5}"><img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAADgdz34AAAAAXNSR0IArs4c6QAAAZlJREFUSEu1Ve1RwkAQfctw+cIZtQOoAKxAqEDtACsQKxAq0A7UDuxA7EAqkBJwRpJcjmGdi4CBfF1EdiZ/kst7u/ve7hEOHHRgfFQiUL79DoCFJ89MEzMmiAKnT8yPGpiJri03fDIhMSZQvj0GcL4CHQtP9v6NQAVOF8yvW4BEPeGGmrQwjCpQvv0C4CKJxMzPViPq700QBE6zzvyRBbQgarluOC0i2VSwmFuXDLQZaBJRc/XTCYBOSZbaWbNYfOYpAfqZ1BuRrvrXpsq3uazcKt+FJ+PkNxUkbVgFKOts0sZbIu9NwvjkGg2SM5Jy0Z9JNDgvu9aR0ppsItOmlUlywLc02O2l8u0HADdGehQMXe6g7ayGQh4Gbi1P6oRSUURQxbZvwpNdY4LM3VPSq7qUp3T6M3DlIvv2gID7FCbTKH5HfJcCYr5aT28pQcZym/By2V9bMPoSHarV9H3QXoPlLb9MDdTcnoFwHP/MNBKNcJjVITV3hutqGJhanmwZtWh1NSKZdZ4EiWogPJlajEb3gdEs5Bw6OME3EmKxGXss48wAAAAASUVORK5CYII="/><img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAADgdz34AAAAAXNSR0IArs4c6QAAAZlJREFUSEu1Ve1RwkAQfctw+cIZtQOoAKxAqEDtACsQKxAq0A7UDuxA7EAqkBJwRpJcjmGdi4CBfF1EdiZ/kst7u/ve7hEOHHRgfFQiUL79DoCFJ89MEzMmiAKnT8yPGpiJri03fDIhMSZQvj0GcL4CHQtP9v6NQAVOF8yvW4BEPeGGmrQwjCpQvv0C4CKJxMzPViPq700QBE6zzvyRBbQgarluOC0i2VSwmFuXDLQZaBJRc/XTCYBOSZbaWbNYfOYpAfqZ1BuRrvrXpsq3uazcKt+FJ+PkNxUkbVgFKOts0sZbIu9NwvjkGg2SM5Jy0Z9JNDgvu9aR0ppsItOmlUlywLc02O2l8u0HADdGehQMXe6g7ayGQh4Gbi1P6oRSUURQxbZvwpNdY4LM3VPSq7qUp3T6M3DlIvv2gID7FCbTKH5HfJcCYr5aT28pQcZym/By2V9bMPoSHarV9H3QXoPlLb9MDdTcnoFwHP/MNBKNcJjVITV3hutqGJhanmwZtWh1NSKZdZ4EiWogPJlajEb3gdEs5Bw6OME3EmKxGXss48wAAAAASUVORK5CYII="/><img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAADgdz34AAAAAXNSR0IArs4c6QAAAZlJREFUSEu1Ve1RwkAQfctw+cIZtQOoAKxAqEDtACsQKxAq0A7UDuxA7EAqkBJwRpJcjmGdi4CBfF1EdiZ/kst7u/ve7hEOHHRgfFQiUL79DoCFJ89MEzMmiAKnT8yPGpiJri03fDIhMSZQvj0GcL4CHQtP9v6NQAVOF8yvW4BEPeGGmrQwjCpQvv0C4CKJxMzPViPq700QBE6zzvyRBbQgarluOC0i2VSwmFuXDLQZaBJRc/XTCYBOSZbaWbNYfOYpAfqZ1BuRrvrXpsq3uazcKt+FJ+PkNxUkbVgFKOts0sZbIu9NwvjkGg2SM5Jy0Z9JNDgvu9aR0ppsItOmlUlywLc02O2l8u0HADdGehQMXe6g7ayGQh4Gbi1P6oRSUURQxbZvwpNdY4LM3VPSq7qUp3T6M3DlIvv2gID7FCbTKH5HfJcCYr5aT28pQcZym/By2V9bMPoSHarV9H3QXoPlLb9MDdTcnoFwHP/MNBKNcJjVITV3hutqGJhanmwZtWh1NSKZdZ4EiWogPJlajEb3gdEs5Bw6OME3EmKxGXss48wAAAAASUVORK5CYII="/><img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAADgdz34AAAAAXNSR0IArs4c6QAAAZlJREFUSEu1Ve1RwkAQfctw+cIZtQOoAKxAqEDtACsQKxAq0A7UDuxA7EAqkBJwRpJcjmGdi4CBfF1EdiZ/kst7u/ve7hEOHHRgfFQiUL79DoCFJ89MEzMmiAKnT8yPGpiJri03fDIhMSZQvj0GcL4CHQtP9v6NQAVOF8yvW4BEPeGGmrQwjCpQvv0C4CKJxMzPViPq700QBE6zzvyRBbQgarluOC0i2VSwmFuXDLQZaBJRc/XTCYBOSZbaWbNYfOYpAfqZ1BuRrvrXpsq3uazcKt+FJ+PkNxUkbVgFKOts0sZbIu9NwvjkGg2SM5Jy0Z9JNDgvu9aR0ppsItOmlUlywLc02O2l8u0HADdGehQMXe6g7ayGQh4Gbi1P6oRSUURQxbZvwpNdY4LM3VPSq7qUp3T6M3DlIvv2gID7FCbTKH5HfJcCYr5aT28pQcZym/By2V9bMPoSHarV9H3QXoPlLb9MDdTcnoFwHP/MNBKNcJjVITV3hutqGJhanmwZtWh1NSKZdZ4EiWogPJlajEb3gdEs5Bw6OME3EmKxGXss48wAAAAASUVORK5CYII="/><img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAADgdz34AAAAAXNSR0IArs4c6QAAAZlJREFUSEu1Ve1RwkAQfctw+cIZtQOoAKxAqEDtACsQKxAq0A7UDuxA7EAqkBJwRpJcjmGdi4CBfF1EdiZ/kst7u/ve7hEOHHRgfFQiUL79DoCFJ89MEzMmiAKnT8yPGpiJri03fDIhMSZQvj0GcL4CHQtP9v6NQAVOF8yvW4BEPeGGmrQwjCpQvv0C4CKJxMzPViPq700QBE6zzvyRBbQgarluOC0i2VSwmFuXDLQZaBJRc/XTCYBOSZbaWbNYfOYpAfqZ1BuRrvrXpsq3uazcKt+FJ+PkNxUkbVgFKOts0sZbIu9NwvjkGg2SM5Jy0Z9JNDgvu9aR0ppsItOmlUlywLc02O2l8u0HADdGehQMXe6g7ayGQh4Gbi1P6oRSUURQxbZvwpNdY4LM3VPSq7qUp3T6M3DlIvv2gID7FCbTKH5HfJcCYr5aT28pQcZym/By2V9bMPoSHarV9H3QXoPlLb9MDdTcnoFwHP/MNBKNcJjVITV3hutqGJhanmwZtWh1NSKZdZ4EiWogPJlajEb3gdEs5Bw6OME3EmKxGXss48wAAAAASUVORK5CYII="/></c:if>
							</div>
							<br>
							
							<div class="wrapper " style="background-color: #1E1D1D">
							<br>
								<h4 style="color: white">Vota il film</h4>
								<div class="txt-center">
									<form action="AddVoto" method="post">
									<c:if test="${empty utente.id}">
										<h6 style="color: red">Devi essere registrato per votare</h6>
										</c:if>
										<c:if test="${not empty utente.id}">
										
										
										<div class="rating" style="margin-right: 30px">
											<input id="star5" name="voto" type="radio" value="5"
												class="radio-btn hide" /> <label for="star5" style="font-size: 15px">☆</label> <input
												id="star4" name="voto" type="radio" value="4"
												class="radio-btn hide" /> <label for="star4" style="font-size: 15px">☆</label> <input
												id="star3" name="voto" type="radio" value="3"
												class="radio-btn hide" /> <label for="star3" style="font-size: 15px">☆</label> <input
												id="star2" name="voto" type="radio" value="2"
												class="radio-btn hide" /> <label for="star2" style="font-size: 15px">☆</label> <input
												id="star1" name="voto" type="radio" value="1"
												class="radio-btn hide" /> <label for="star1" style="font-size: 15px">☆</label>
											<div class="clear"></div>
										</div>
										
										
										<button type="submit" style="padding: 10px; border-radius: 30px;">vota</button>
										</c:if>
									</form>
								</div>


							</div>
							<br> <br>
							<div class="set">
								<label>Descrizione</label> <span><c:out
										value="${film.descrizione}" /></span>
							</div>
						</div>



						<div class="movie-cast">
							<br>
							<div class="header">Cast</div>
							<div class="list" style="margin-top: -20px;">
								<c:forEach items="${film.cast}" var="a">
									<form action="findById-attore" method="get">
										<figure class="figure foto">
											<input type="hidden" name="id" value="${a.attore.id }">
											<input type="hidden" name="idUtente" value="${utente.id }">
											<div class="fotoprova">
												<input type="image" src="${a.attore.foto}"
													value="${a.attore.id }" name="id"
													alt="Locandina per ${a.attore.cognome}"
													class="figure-img img-fluid rounded">
											</div>
											<figcaption class="figure-caption text-center">
												<c:out value="${a.attore.nome}" />
												<c:out value="${a.attore.cognome}" />
											</figcaption>
										</figure>
									</form>
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
	<script type="text/javascript">
		const allStar = document.querySelectorAll('.rating .star')
		const ratingValue = document.querySelector('.rating input')

		allStar.forEach((item, idx)=> {
			item.addEventListener('click', function () {
				let click = 0
				ratingValue.value = idx + 1

				allStar.forEach(i=> {
					i.classList.replace('bxs-star', 'bx-star')
					i.classList.remove('active')
				})
				for(let i=0; i<allStar.length; i++) {
					if(i <= idx) {
						allStar[i].classList.replace('bx-star', 'bxs-star')
						allStar[i].classList.add('active')
					} else {
						allStar[i].style.setProperty('--i', click)
						click++
					}
				}
			})
		})
		
		
		</script>
		
</body>
</html>
