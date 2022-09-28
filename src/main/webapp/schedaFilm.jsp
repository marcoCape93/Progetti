<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Pagina Film</title>
        <link rel="stylesheet" href="styles.css">
    </head>
    <body>
    <div class="container">
    	<div class="poster">
    		<img alt="Locandina per ${film.titolo}" src="${film.locandina}">
    	</div>
    	<div class="info">
                <div class="movie-title">
                    <c:out value="${film.titolo}"/> 
                </div>
                <div class="movie-detail">
                	<div class="set">
                        <label>Anno</label>
                        <span><c:out value="${film.anno}"/></span>
                    </div>
                    <div class="set">
                        <label>Paese</label>
                        <span><c:out value="${film.paese}"/></span>
                    </div>
                    <div class="set">
                        <label>Genere</label>
                        <span><c:out value="${film.genere}"/></span>
                    </div>
                    <div class="set">
                        <label>Regista</label>
                        <span><c:out value="${film.regista}"/></span>
                    </div>
                    <div class="set">
                        <label>Distribuzione</label>
                        <span><c:out value="${film.distribuzione}"/></span>
                    </div>
                    <div class="set">
                        <label>Durata</label>
                        <span><c:out value="${film.durata}"/></span>
                    </div>
                    <div class="set">
                        <label>Descrizione</label>
                        <span><c:out value="${film.descrizione}"/></span>
                    </div>
                    <div class="set">
                        <label>Voto</label>
                        <span><c:out value="${film.voto}"/></span>
                    </div>
                 </div>
                 <div class="movie-cast">
                    <div class="header">Cast</div>
                    <div class="list">
                    	<c:forEach items="${film.cast}" var="a">
                    	<img alt="Locandina per ${attore.foto}" src="${a.attore.foto}">
						<div class="set">
                         	<span class="nome-cognome"><c:out value="${a.attore.nome}"/> <c:out value="${a.attore.cognome}"/></span>
                   		</div>
                        </c:forEach>
                    </div>
                 </div>
			 </div>
			</div> 
    </body>
</html>