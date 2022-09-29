package org.generationitaly.progettocinema.service;

import org.generationitaly.progettocinema.entity.FilmUtenti;

public interface FilmUtentiService  {

	public int FindByIdUtente(int id);
	
	public double FindAvgVoto(int id);
	
	public FilmUtenti FindByIdUtenteIdFilm(int idU,int idF);

	void save(FilmUtenti filmUtenti);
	
	void update(FilmUtenti filmUtenti);
}
