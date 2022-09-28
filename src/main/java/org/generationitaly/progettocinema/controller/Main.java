package org.generationitaly.progettocinema.controller;

import java.util.List;

import org.generationitaly.progettocinema.entity.Utente;
import org.generationitaly.progettocinema.repository.FilmRepository;
import org.generationitaly.progettocinema.repository.UtenteRepository;
import org.generationitaly.progettocinema.repository.impl.FilmRepositoryImpl;
import org.generationitaly.progettocinema.repository.impl.UtenteRepositoryImpl;

public class Main {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		FilmRepository filmRepository = new FilmRepositoryImpl();
		UtenteRepository utenteRepository = new UtenteRepositoryImpl();
//		List<String> genere = filmRepository.findAll();
		List<Utente> anno = utenteRepository.findAll();
//		for(String f:genere) {
//			System.out.println(f);
//		}
		for(Utente f:anno) {
			System.out.println(f.getNome());
		}
	}

}
