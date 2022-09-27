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
 * Servlet implementation class FindFilmByTitoloServlet
 */
@WebServlet("/find-by-titolo")
public class FindFilmByTitoloServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private FilmRepository filmRepository = new FilmRepositoryImpl();
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String titolo = request.getParameter("titolo");
		List<String> generi = filmRepository.findAllGenere();
		List<Integer> anni = filmRepository.findAllAnno();
		List<Film> film = filmRepository.findByTitolo(titolo);
		
		request.setAttribute("generi", generi);
		request.setAttribute("anni", anni);
		request.setAttribute("film", film);
		request.getRequestDispatcher("AllFilm.jsp").forward(request, response);
	}

	

}
