package org.generationitaly.progettocinema.repository;

import org.generationitaly.progettocinema.entity.Attore;

public interface AttoreRepository extends CrudRepository<Attore, Integer>{

	Attore findByCognome(String cognome);
}
