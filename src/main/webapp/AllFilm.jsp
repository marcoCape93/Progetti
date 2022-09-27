<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action="AnnoFilmServlet" method="get">
		<label for="anno">Anno</label>
			<select name="anno">
			<option >Seleziona..</option>
			<c:forEach items="${anni}" var="f">
				<option value="${f}">${f}</option>
			</c:forEach>
			</select>
		<button type="submit">Cerca</button>
	</form>
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
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${film}" var="f">
				<tr>
					<td><c:out value="${f.titolo}" /></td>
					<td><c:out value="${f.anno}" /></td>
					<td><c:out value="${f.paese}" /></td>
					<td><c:out value="${f.genere}" /></td>
					<td><c:out value="${f.regista}" /></td>
					<td><c:out value="${f.distribuzione}" /></td>
					<td><c:out value="${f.durata}" /></td>
					<td><c:out value="${f.descrizione}" /></td>
					<td><img alt="Immagine di copertina per ${f.titolo}" src="${f.locandina}"></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>