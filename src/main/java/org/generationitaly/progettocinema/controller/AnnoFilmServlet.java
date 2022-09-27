package org.generationitaly.progettocinema.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.generationitaly.progettocinema.entity.Film;
import org.generationitaly.progettocinema.repository.FilmRepository;
import org.generationitaly.progettocinema.repository.impl.FilmRepositoryImpl;

/**
 * Servlet implementation class AnnoFilmServlet
 */
@WebServlet("/AnnoFilmServlet")
public class AnnoFilmServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	private FilmRepository filmRepository = new FilmRepositoryImpl();
	
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int anno = Integer.parseInt(request.getParameter("anno"));
		List<Film> anni = filmRepository.findAllAnno();
		List<Film> film = filmRepository.findByAnno(anno);
		List<Film> generi = filmRepository.findAllGenere();
		
		request.setAttribute("anni", anni);
		request.setAttribute("generi", generi);
		request.setAttribute("film", film);
		request.getRequestDispatcher("AllFilm.jsp").forward(request, response);
	}


}
