package org.generationitaly.progettocinema.controller;

import java.util.List;

import org.generationitaly.progettocinema.entity.Film;
import org.generationitaly.progettocinema.entity.Utente;
import org.generationitaly.progettocinema.repository.FilmRepository;
import org.generationitaly.progettocinema.repository.UtenteRepository;
import org.generationitaly.progettocinema.repository.impl.FilmRepositoryImpl;
import org.generationitaly.progettocinema.repository.impl.UtenteRepositoryImpl;
import org.generationitaly.progettocinema.service.FilmService;
import org.generationitaly.progettocinema.service.impl.FilmServiceImpl;

public class Main {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		FilmService filmService = new FilmServiceImpl();
//		List<String> genere = filmRepository.findAll();
		List<Film> tito = filmService.findByAnnoAndGenere(2022,"azione");
		System.out.println(tito);

	}

}
