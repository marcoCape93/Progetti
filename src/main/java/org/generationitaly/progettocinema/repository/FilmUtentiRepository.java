package org.generationitaly.progettocinema.repository;

import org.generationitaly.progettocinema.entity.FilmUtenti;

public interface FilmUtentiRepository extends CrudRepository<FilmUtenti, FilmUtenti> {
	 
	
	
	int FindByIdUtente(int id);
	
	double FindAvgVoto(int id);

	FilmUtenti FindByIdUtenteIdFilm(int idU,int idF);

}
