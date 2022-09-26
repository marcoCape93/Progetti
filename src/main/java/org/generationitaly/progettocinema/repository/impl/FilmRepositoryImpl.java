package org.generationitaly.progettocinema.repository.impl;

import org.generationitaly.progettocinema.entity.Film;
import org.generationitaly.progettocinema.repository.FilmRepository;

public class FilmRepositoryImpl extends CrudRepositoryImpl<Film,Integer> implements FilmRepository{
	
	public FilmRepositoryImpl() {
		super(Film.class);
	}
	
}
