package org.generationitaly.progettocinema.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.generationitaly.progettocinema.entity.Film;
import org.generationitaly.progettocinema.entity.FilmUtenti;
import org.generationitaly.progettocinema.service.FilmService;
import org.generationitaly.progettocinema.service.FilmUtentiService;
import org.generationitaly.progettocinema.service.UtenteService;
import org.generationitaly.progettocinema.service.impl.FilmServiceImpl;
import org.generationitaly.progettocinema.service.impl.FilmUtentiServiceImpl;
import org.generationitaly.progettocinema.service.impl.UtenteServiceImpl;

@WebServlet("/AddVoto")
public class AddVotoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	FilmUtentiService filmUtentiService = new FilmUtentiServiceImpl();
	UtenteService utenteService = new UtenteServiceImpl();
	FilmService filmService = new FilmServiceImpl();

//	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		int idUtente=Integer.parseInt(request.getParameter("id-utente"));
//		int idFilm=Integer.parseInt(request.getParameter("id-film"));
//		int voto=Integer.parseInt(request.getParameter("voto"));
//		double media=0;
//		Film film=filmService.findById(idFilm);
//		FilmUtenti filmUtenti=new FilmUtenti();
//		filmUtenti.setFilm(filmService.findById(idFilm));
//		filmUtenti.setUtente(utenteService.findById(idUtente));
//		filmUtenti.setVoto(voto);
//		filmUtentiService.save(filmUtenti);
//		media=filmUtentiService.FindAvgVoto(idFilm);
//		film.setVoto((int) media);
//		filmService.update(film);
//		
//			
//			request.getRequestDispatcher("ProvaVoto.jsp").forward(request, response);
//	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int idUtente = Integer.parseInt(request.getParameter("id-utente"));
		int idFilm = Integer.parseInt(request.getParameter("id-film"));
		int voto = Integer.parseInt(request.getParameter("voto"));
		double media = 0;
		FilmUtenti filmUtenti = filmUtentiService.FindByIdUtenteIdFilm(idUtente, idFilm);
		Film film = filmService.findById(idFilm);
		filmUtenti.setVoto(voto);
		filmUtentiService.update(filmUtenti);
		media = filmUtentiService.FindAvgVoto(idFilm);
		film.setVoto((int) media);
		filmService.update(film);
		request.setAttribute("film", film);
		request.getRequestDispatcher("schedaFilmDef.jsp").forward(request, response);
	}

}
