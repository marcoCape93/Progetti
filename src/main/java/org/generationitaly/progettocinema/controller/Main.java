package org.generationitaly.progettocinema.controller;

import java.util.List;

import org.generationitaly.progettocinema.repository.FilmRepository;
import org.generationitaly.progettocinema.repository.impl.FilmRepositoryImpl;

public class Main {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		FilmRepository filmRepository = new FilmRepositoryImpl();
		List<String> genere = filmRepository.findAllGenere();
		List<Integer> anno = filmRepository.findAllAnno();
		for(String f:genere) {
			System.out.println(f);
		}
		for(Integer f:anno) {
			System.out.println(f);
		}
	}

}
