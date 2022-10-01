package org.generationitaly.progettocinema.repository;

import java.util.List;

import org.generationitaly.progettocinema.entity.Attore;

public interface AttoreRepository extends CrudRepository<Attore, Integer>{

	List<Attore> findByCognome(String cognome);

	List<Attore> orderAZ();
	
	List<Attore> orderZA();
	
}
