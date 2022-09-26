package org.generationitaly.progettocinema.repository.impl;

import org.generationitaly.progettocinema.entity.FilmAttori;
import org.generationitaly.progettocinema.repository.FilmAttoriRepository;

public class FilmAttoriRepositoryImpl extends CrudRepositoryImpl<FilmAttori,Integer> implements FilmAttoriRepository{
	
	public FilmAttoriRepositoryImpl() {
		super(FilmAttori.class);
	}
	
}
