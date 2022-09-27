package org.generationitaly.progettocinema.controller;

import java.util.List;

import org.generationitaly.progettocinema.entity.Film;
import org.generationitaly.progettocinema.repository.FilmRepository;
import org.generationitaly.progettocinema.repository.impl.FilmRepositoryImpl;

public class Main {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		FilmRepository filmRepository = new FilmRepositoryImpl();
		List<Film> film = filmRepository.findAllAnno();
		for(Film f:film) {
			System.out.println(f.getAnno());
		}
	}

}
