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
 * Servlet implementation class RicercaServlet
 */
@WebServlet("/RicercaServlet")
public class RicercaServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private FilmService filmService = new FilmServiceImpl();

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String titolo = request.getParameter("titoli");
		String genere = request.getParameter("generi");
		String test = request.getParameter("anni");
		int anno = 0;
		if(test != null) {
			anno = Integer.parseInt(test);
		}
		 

		System.err.println(titolo);
		System.err.println(genere);
		System.err.println(anno);

		if (genere != null) {
			List<Film> film = filmService.findByGenere(genere);
			request.setAttribute("film", film);
			request.getRequestDispatcher("AllFilm.jsp").forward(request, response);
		}

		/* if (genere == null && anno == 0) { */
		if (titolo != null) { 
			List<Film> film = filmService.findByTitolo(titolo);
			request.setAttribute("film", film);
			request.getRequestDispatcher("AllFilm.jsp").forward(request, response);

		}

		if (anno != 0 && anno > 0) {
			List<Film> film = filmService.findByAnno(anno);
			request.setAttribute("film", film);
			request.getRequestDispatcher("AllFilm.jsp").forward(request, response);
		}
		
		if (anno != 0 && !genere.isBlank()) {
			List<Film> film = filmService.findByAnnoAndGenere(anno,genere);
			request.setAttribute("film", film);
			request.getRequestDispatcher("AllFilm.jsp").forward(request, response);
		}
	}

}
