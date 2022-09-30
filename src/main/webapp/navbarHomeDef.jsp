<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

	<nav class="navbar bg-light fixed-top">
  <div class="container-fluid">
    <a class="navbar-brand" href="./home-page.jsp">moviespace</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasNavbar" aria-controls="offcanvasNavbar">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="offcanvas offcanvas-end" tabindex="-1" id="offcanvasNavbar" aria-labelledby="offcanvasNavbarLabel">
      <div class="offcanvas-header">
        <h5 class="offcanvas-title" id="offcanvasNavbarLabel">
        	<c:if test="${empty utente}">
        	<span style="color: black;">
        		 <a href="registrationDef.jsp">Non sei registrato?</a>
        	</span>
        	</c:if>
        	<c:if test="${not empty utente }">
       		<span style="color: black;">
        	Ciao 
        	<c:out value="${sessionScope.utente.nome}"></c:out>
        	!
        	</span>
        	</c:if>
         </h5>
        <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close"></button>
      </div>
      <div class="offcanvas-body">
        <ul class="navbar-nav justify-content-end flex-grow-1 pe-3">
          <li class="nav-item">
            <form action="home-page.jsp" method="get">
          	<input type="hidden" name="#">
          	<button type="submit" class="btn btn-outline-secondary" style="border-color: white;">Home Page</button>
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
        
      </div>
    </div>
  </div>
</nav>
