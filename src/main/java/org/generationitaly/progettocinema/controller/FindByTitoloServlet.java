package org.generationitaly.progettocinema.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.generationitaly.progettocinema.entity.Film;
import org.generationitaly.progettocinema.service.FilmService;
import org.generationitaly.progettocinema.service.impl.FilmServiceImpl;

/**
 * Servlet implementation class FindByTitoloServlet
 */
@WebServlet("/FindByTitoloServlet")
public class FindByTitoloServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	private FilmService filmService = new FilmServiceImpl();
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String titolo = request.getParameter("titoli");
		if( titolo.isBlank()) {
			List<Film> film = filmService.findAll();
			request.setAttribute("film", film);
			request.getRequestDispatcher("AllFilm.jsp").forward(request, response);
		}else if (titolo != null) { 
			List<Film> film = filmService.findByTitolo(titolo);
			request.setAttribute("film", film);
			request.getRequestDispatcher("AllFilm.jsp").forward(request, response);

		}
	}


}
