package org.generationitaly.progettocinema.repository;

import org.generationitaly.progettocinema.entity.Utente;

public interface UtenteRepository extends CrudRepository<Utente, Integer>{
	
	Utente findByUsername(String x); 
	
}
