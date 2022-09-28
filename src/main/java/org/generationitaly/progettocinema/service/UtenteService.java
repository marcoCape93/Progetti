package org.generationitaly.progettocinema.service;

import java.util.List;

import org.generationitaly.progettocinema.entity.Utente;

public interface UtenteService {
	
	List<Utente> findAll();
	
	void save(Utente utente);
	
	void delete(int id);

	Utente findByUsername(String x);
}
