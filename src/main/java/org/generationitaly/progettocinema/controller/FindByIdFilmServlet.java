package org.generationitaly.progettocinema.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.generationitaly.progettocinema.entity.Film;
import org.generationitaly.progettocinema.service.FilmService;
import org.generationitaly.progettocinema.service.impl.FilmServiceImpl;

/**
 * Servlet implementation class FindByIdFilmServlet
 */
@WebServlet("/findById-film")
public class FindByIdFilmServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private FilmService filmService = new FilmServiceImpl();
	
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		Film film = filmService.findById(id);
		request.setAttribute("film", film);
		request.getRequestDispatcher("schedaFilm.jsp").forward(request, response);
		
	}

}
