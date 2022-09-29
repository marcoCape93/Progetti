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
		int anno = Integer.parseInt(request.getParameter("anni"));

		if (genere != null && titolo.isBlank() && anno == 0) {

			List<String> generi = filmService.findAllGenere();
			List<Integer> anni = filmService.findAllAnno();
			List<Film> film = filmService.findByGenere(genere);
			List<String> titoli = filmService.findAllTitoli();
			
			request.setAttribute("generi", generi);
			request.setAttribute("anni", anni);
			request.setAttribute("film", film);
			request.setAttribute("titoli", titoli);
			request.getRequestDispatcher("AllFilm.jsp").forward(request, response);
		}

		if (titolo != null && genere.isBlank() && anno == 0) {

			List<String> generi = filmService.findAllGenere();
			List<Integer> anni = filmService.findAllAnno();
			List<Film> film = filmService.findByTitolo(titolo);
			List<String> titoli = filmService.findAllTitoli();
			
			request.setAttribute("generi", generi);
			request.setAttribute("anni", anni);
			request.setAttribute("film", film);
			request.setAttribute("titoli", titoli);
			request.getRequestDispatcher("AllFilm.jsp").forward(request, response);

		}

		if (anno != 0 && titolo.isBlank() && genere.isBlank()) {

			List<Integer> anni = filmService.findAllAnno();
			List<String> titoli = filmService.findAllTitoli();
			List<Film> film = filmService.findByAnno(anno);
			List<String> generi = filmService.findAllGenere();

			request.setAttribute("anni", anni);
			request.setAttribute("generi", generi);
			request.setAttribute("titoli", titoli);
			request.setAttribute("film", film);
			request.getRequestDispatcher("AllFilm.jsp").forward(request, response);
		}
		
		if (anno != 0 && genere != null && titolo.isBlank()) {
			List<Integer> anni = filmService.findAllAnno();
			List<String> titoli = filmService.findAllTitoli();
			List<Film> film = filmService.findByAnnoAndGenere(anno,genere);
			List<String> generi = filmService.findAllGenere();

			request.setAttribute("anni", anni);
			request.setAttribute("generi", generi);
			request.setAttribute("titoli", titoli);
			request.setAttribute("film", film);
			request.getRequestDispatcher("AllFilm.jsp").forward(request, response);
		}
	}

}
