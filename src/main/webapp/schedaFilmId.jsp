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
				<th>Titolo</th>
				<td><c:out value="${film.titolo}"/></td>
			</tr>
			<tr>
				<th>Anno</th>
				<td><c:out value="${film.anno}"/></td>
			</tr>
			<tr>
				<th>Paese</th>
				<td><c:out value="${film.paese}"/></td>
			</tr>
			<tr>
				<th>Genere</th>
				<td><c:out value="${film.genere}"></c:out></td>
			</tr>
			<tr>
				<th>Regista</th>
				<td><c:out value="${film.regista}"></c:out></td>
			</tr>
			<tr>
				<th>Distribuzione</th>
				<td><c:out value="${film.distribuzione}"></c:out></td>
			</tr>
			<tr>
				<th>Durata</th>
				<td><c:out value="${film.durata}"></c:out></td>
			</tr>
			<tr>
				<th>Descrizione</th>
				<td><c:out value="${film.descrizione}"></c:out></td>
			</tr>
			<tr>
				<th>Locandina</th>
				<td><img alt="Locandina per ${film.titolo}" src="${film.locandina}"></td>
			</tr>
			<tr>
				<th>Voto</th>
				<td><c:out value="${film.voto}"></c:out></td>
			</tr>
			</tbody>
			</table>
			
			<table>
				<thead>
					<tr>
						<th>Nome</th>
						<th>Cognome</th>
						<th>Data di nascita</th>
						<th>Luogo di nascita</th>
						<th>Biografia</th>
						<th>Foto</th>
					</tr>
				</thead>
				<tbody>

					<c:forEach items="${film.cast}" var="a">
						<tr>
							<td>
								<c:out value="${a.attore.nome}"></c:out>
							</td>
							<td>
								<c:out value="${a.attore.cognome}"></c:out>
							</td>
							<td>
								<c:out value="${a.attore.dataNascita}"></c:out>
							</td>
							<td>
								<c:out value="${a.attore.luogoNascita}"></c:out>
							</td>
							<td>
								<c:out value="${a.attore.biografia}"></c:out>
							</td>
							<td>
								<c:out value="${a.attore.foto}"></c:out>
							</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
			
</body>
</html>