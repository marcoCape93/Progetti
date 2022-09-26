package org.generationitaly.progettocinema.repository;

import java.util.List;

public interface CrudRepository<T, ID> {
	
	List<T> findAll();
	
	T findById(ID id);
}
