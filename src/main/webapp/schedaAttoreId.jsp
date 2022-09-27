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
	<table>
		<tbody>
			<tr>
				<th>Nome</th>
				<td><c:out value="${attore.nome}"/></td>
			</tr>
			<tr>
				<th>Cognome</th>
				<td><c:out value="${attore.cognome}"/></td>
			</tr>
			<tr>
				<th>Data di nascita</th>
				<td><c:out value="${attore.dataNascita}"/></td>
			</tr>
			<tr>
				<th>Luogo di nascita</th>
				<td><c:out value="${attore.luogoNascita}"></c:out></td>
			</tr>
			<tr>
				<th>Biografia</th>
				<td><c:out value="${attore.biografia}"></c:out></td>
			</tr>
			<tr>
				<th>Foto</th>
				<td><img alt="Foto attore ${attore.nome} ${attore.cognome}" src="${attore.foto}"></td>
			</tr>
			</tbody>
			</table>
			
			<table>
				<thead>
					<tr>
						<th>Titolo</th>
						<th>Anno</th>
						<th>Paese</th>
						<th>Genere</th>
						<th>Regista</th>
						<th>Distribuzione</th>
						<th>Durata</th>
						<th>Descrizione</th>
						<th>Voto</th>
						<th>Locandina</th>
					</tr>
				</thead>
				<tbody>

					<c:forEach items="${attore.filmografia}" var="f">
						<tr>
							<td>
								<c:out value="${f.film.titolo}"></c:out>
							</td>
							<td>
								<c:out value="${f.film.anno}"></c:out>
							</td>
							<td>
								<c:out value="${f.film.paese}"></c:out>
							</td>
							<td>
								<c:out value="${f.film.genere}"></c:out>
							</td>
							<td>
								<c:out value="${f.film.regista}"></c:out>
							</td>
							<td>
								<c:out value="${f.film.distribuzione}"></c:out>
							</td>
							<td>
								<c:out value="${f.film.durata}"></c:out>
							</td>
							<td>
								<c:out value="${f.film.descrizione}"></c:out>
							</td>
							<td>
								<c:out value="${f.film.voto}"></c:out>
							</td>
							<td>
								<c:out value="${f.film.locandina}"></c:out>
							</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
			
			
</body>
</html>