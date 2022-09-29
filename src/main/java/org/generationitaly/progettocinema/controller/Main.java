package org.generationitaly.progettocinema.controller;

import java.util.List;

import org.generationitaly.progettocinema.entity.Film;
import org.generationitaly.progettocinema.entity.Utente;
import org.generationitaly.progettocinema.repository.FilmRepository;
import org.generationitaly.progettocinema.repository.UtenteRepository;
import org.generationitaly.progettocinema.repository.impl.FilmRepositoryImpl;
import org.generationitaly.progettocinema.repository.impl.UtenteRepositoryImpl;
import org.generationitaly.progettocinema.service.FilmService;
import org.generationitaly.progettocinema.service.UtenteService;
import org.generationitaly.progettocinema.service.impl.FilmServiceImpl;
import org.generationitaly.progettocinema.service.impl.UtenteServiceImpl;

public class Main {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		UtenteService utenteService = new UtenteServiceImpl();
		FilmService filmService = new FilmServiceImpl();
//		List<String> genere = filmRepository.findAll();
		List<Film> tito = filmService.findAll();
		for(Film f:tito) {
			System.out.println(tito);
			
		}

	}

}
