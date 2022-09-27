package org.generationitaly.progettocinema.repository.impl;


import java.util.List;

import javax.persistence.EntityManager;

import org.generationitaly.progettocinema.entity.Film;
import org.generationitaly.progettocinema.repository.FilmRepository;
import org.generationitaly.progettocinema.util.PersistenceUtil;

public class FilmRepositoryImpl extends CrudRepositoryImpl<Film,Integer> implements FilmRepository{
	
	public FilmRepositoryImpl() {
		super(Film.class);
	}

	@Override
	public List<Film> findByAnno(int anno) {
		EntityManager em = PersistenceUtil.getEntityManager();
		return em.createQuery("from"+ entityClass.getName(), entityClass).getResultList();
	}
	
}
