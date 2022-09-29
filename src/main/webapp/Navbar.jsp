<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>           
<!DOCTYPE html>
<nav class="navbar bg-light fixed-top">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">Nome del sito</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasNavbar" aria-controls="offcanvasNavbar">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="offcanvas offcanvas-end" tabindex="-1" id="offcanvasNavbar" aria-labelledby="offcanvasNavbarLabel">
      <div class="offcanvas-header">
        <h5 class="offcanvas-title" id="offcanvasNavbarLabel">
        	<span style="color: black;"><c:out value="${username}"></c:out></span>
			<form action="logout" method="post">
				<button type="submit">Logout</button>
			</form>
         </h5>
        <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close"></button>
      </div>
      <div class="offcanvas-body">
        <ul class="navbar-nav justify-content-end flex-grow-1 pe-3">
          <li class="nav-item">
            <form action="home-page.jsp" method="get">
          	<input type="hidden" name="#">
          	<button type="submit" class="btn btn-outline-secondary" style="border-color: white;">Homepage</button>
            </form>
          </li>
          <li class="nav-item">
          	<form action="tuttiFilm" method="get">
          	<input type="hidden" name="film">
          	<button type="submit" class="btn btn-outline-secondary" style="border-color: white;">Lista Film</button>
            </form>
          </li>
          <li class="nav-item">
            <form action="tuttiAttori" method="get">
          	<input type="hidden" name="listAttori">
          	<button type="submit" class="btn btn-outline-secondary" style="border-color: white;">Lista Attori</button>
            </form>
          </li>
          <li class="nav-item">
          	<form action="logout" method="post">
          		<button type="submit" class="btn btn-outline-secondary" name="" style="border-color: white;">
          		Logout
          		</button>
          	</form>
          </li>
        </ul>
        <br>
        <h5>Ricerca film per titolo:</h5>
			<form action="RicercaServlet" method="get" class="d-flex"
				role="search">
				<input name="titoli" class="form-control me-2" type="text"
					placeholder="Cerca..." aria-label="Cerca...">
				<button class="btn btn-outline-success" type="submit">Cerca</button>
			</form>
			<br>
			<h5>Ricerca film per anno:</h5>
			<form action="RicercaServlet" method="get" class="d-flex"
				role="search">
				<div class="row">
					<div class="col">
						<input name="anni" class="form-control me-2" type="text" placeholder="Cerca..." aria-label="Cerca...">
						<h5>Ricerca film per genere:</h5>
						<input name="generi" class="form-control me-2" type="text" placeholder="Cerca..." aria-label="Cerca...">
						<br>
						<button class="btn btn-outline-success" type="submit">Cerca</button>
					</div>
				</div>
			</form>
			<br>
			<h5>Ricerca attori per cognome:</h5>
			<form action="findCognome-attore" method="get" class="d-flex"
				role="search">
				<input name="cognome" class="form-control me-2" type="text"
					placeholder="Cerca..." aria-label="Cerca...">
				<button class="btn btn-outline-success" type="submit">Cerca</button>
			</form>
      </div>
    </div>
  </div>
</nav>