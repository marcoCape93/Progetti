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
 * Servlet implementation class FindByAnnoServlet
 */
@WebServlet("/FindByAnnoServlet")
public class FindByAnnoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private FilmService filmService = new FilmServiceImpl();

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String test = request.getParameter("anni");
		boolean error2= false;
		boolean error = false;
		if (test.matches("[a-zA-Z]+")) {
			error = true;
			List<Film> film = filmService.findAll();
			request.setAttribute("film", film);
			request.setAttribute("error", error);
			request.getRequestDispatcher("AllFilm.jsp").forward(request, response);
		}
		if (test.isBlank()) {
			error = false;
			List<Film> film = filmService.findAll();
			request.setAttribute("error", error);
			request.setAttribute("film", film);
			request.getRequestDispatcher("AllFilm.jsp").forward(request, response);
		} else if (test != null) {
			error = false;
			int anno = Integer.parseInt(test);
			List<Film> film = filmService.findByAnno(anno);
			if (film.isEmpty()) {
				error2=true;
				film = filmService.findAll();
				request.setAttribute("film", film);
				request.setAttribute("error2", error2);
				request.getRequestDispatcher("AllFilm.jsp").forward(request, response);
			}
			request.setAttribute("error", error);
			request.setAttribute("film", film);
			request.getRequestDispatcher("AllFilm.jsp").forward(request, response);

		}
	}

}
