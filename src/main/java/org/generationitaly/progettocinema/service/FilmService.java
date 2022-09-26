package org.generationitaly.progettocinema.service;

import java.util.List;

import org.generationitaly.progettocinema.entity.Film;

public interface FilmService {
	
	List<Film> findAll();
	
	Film findById(int id);
	
	
}
