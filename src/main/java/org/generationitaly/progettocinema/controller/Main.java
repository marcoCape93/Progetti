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
		Utente anno = utenteRepository.findByUsername("ff");
//		for(String f:genere) {
//			System.out.println(f);
//		}
		System.out.println(anno.getUsername());
	}

}
