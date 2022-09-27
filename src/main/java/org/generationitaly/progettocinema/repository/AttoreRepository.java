package org.generationitaly.progettocinema.repository;

import java.util.List;

import org.generationitaly.progettocinema.entity.Attore;

public interface AttoreRepository extends CrudRepository<Attore, Integer>{

	Attore findByCognome(String cognome);

	List<Attore> orderAZ();
	
	List<Attore> orderZA();
	
}
