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
	public List<Film> findAllGenere() {
		EntityManager em = PersistenceUtil.getEntityManager();
		return em.createQuery("select a from Film a group by a.genere", Film.class).getResultList();
	}
	
	@Override
	public List<Film> findAllAnno() {
		EntityManager em = PersistenceUtil.getEntityManager();
		return em.createQuery("select a from Film a group by a.anno order by a.anno desc", Film.class).getResultList();
	}

	@Override
	public List<Film> findByAnno(int anno) {
		EntityManager em = PersistenceUtil.getEntityManager();
		return em.createQuery("select a from Film a where a.anno=:anno", Film.class).setParameter("anno", anno).getResultList();
	}

	@Override
	public List<Film> findByGenere(String genere) {
		EntityManager em = PersistenceUtil.getEntityManager();
		return em.createQuery("select a from Film a where a.genere=:genere", Film.class).setParameter("genere", genere).getResultList();
	}
	
}
