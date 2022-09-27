package org.generationitaly.progettocinema.service;

import java.util.List;

import org.generationitaly.progettocinema.entity.Attore;

public interface AttoreService {
	
	List<Attore> findAll();
	
	Attore findById(int id);
	
	Attore findByCognome(String cognome);
}
