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
 * Servlet implementation class AnnoFilmServlet
 */
@WebServlet("/AnnoFilmServlet")
public class AnnoFilmServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	private FilmService filmService = new FilmServiceImpl();
	
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int anno = Integer.parseInt(request.getParameter("anno"));
		List<Integer> anni = filmService.findAllAnno();
		List<Film> film = filmService.findByAnno(anno);
		List<String> generi = filmService.findAllGenere();
		
		request.setAttribute("anni", anni);
		request.setAttribute("generi", generi);
		request.setAttribute("film", film);
		request.getRequestDispatcher("AllFilm.jsp").forward(request, response);
	}


}
