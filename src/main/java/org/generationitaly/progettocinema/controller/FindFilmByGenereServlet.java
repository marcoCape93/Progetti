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

@WebServlet("/find-by-genere")
public class FindFilmByGenereServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private FilmRepository filmRepository = new FilmRepositoryImpl();

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String genere = request.getParameter("genere");
		List<Film> generi = filmRepository.findAllGenere();
		List<Film> film = filmRepository.findByGenere(genere);
//		for(Film m:film) {
//			System.out.println(m);
//		}
		request.setAttribute("generi", generi);
		request.setAttribute("film", film);
		request.getRequestDispatcher("AllFilm.jsp").forward(request, response);
	}	

}
