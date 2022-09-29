package org.generationitaly.progettocinema.service;

import java.util.List;

import org.generationitaly.progettocinema.entity.Film;

public interface FilmService {
	
	List<Film> findAll();
	
	Film findById(int id);
	
	List<Film> findByAnno(int anno);
	
	List<Film> findByGenere(String genere);

	List<Integer> findAllAnno();

	List<String> findAllGenere();
	
	List<String> findAllTitoli();

	List<Film> findByTitolo(String titolo);	
	
	List<Film> orderAZ();
	
	List<Film> orderZA();

	List<Film> findByAnnoAndGenere(int anno, String genere);
}
