package org.generationitaly.progettocinema.repository.impl;


import java.util.List;

import javax.persistence.EntityManager;

import org.generationitaly.progettocinema.entity.Attore;
import org.generationitaly.progettocinema.entity.Film;
import org.generationitaly.progettocinema.repository.FilmRepository;
import org.generationitaly.progettocinema.util.PersistenceUtil;

public class FilmRepositoryImpl extends CrudRepositoryImpl<Film,Integer> implements FilmRepository{
	
	public FilmRepositoryImpl() {
		super(Film.class);
	}
	
	@Override
	public List<String> findAllGenere() {
		EntityManager em = PersistenceUtil.getEntityManager();
		return em.createQuery("select distinct a.genere from Film a", String.class).getResultList();
	}
	
	@Override
	public List<Integer> findAllAnno() {
		EntityManager em = PersistenceUtil.getEntityManager();
		return em.createQuery("select distinct a.anno from Film a order by a.anno desc", Integer.class).getResultList();
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

	@Override
	public List<Film> orderAZ() {
		EntityManager em = PersistenceUtil.getEntityManager();
		return em.createQuery("select a from Film a order by titolo", Film.class).getResultList();
	}

	@Override
	public List<Film> orderZA() {
		EntityManager em = PersistenceUtil.getEntityManager();
		return em.createQuery("select a from Film a order by titolo desc", Film.class).getResultList();		
	}
	
}
