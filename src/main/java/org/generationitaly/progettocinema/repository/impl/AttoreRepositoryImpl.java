package org.generationitaly.progettocinema.repository.impl;

import java.util.List;

import javax.persistence.EntityManager;

import org.generationitaly.progettocinema.entity.Attore;
import org.generationitaly.progettocinema.repository.AttoreRepository;
import org.generationitaly.progettocinema.util.PersistenceUtil;

public class AttoreRepositoryImpl extends CrudRepositoryImpl<Attore,Integer> implements AttoreRepository{
	
	public AttoreRepositoryImpl() {
		super(Attore.class);
	}
	
	@Override
	public List<Attore> orderAZ() {
		EntityManager em = PersistenceUtil.getEntityManager();
		return em.createQuery("select a from Attore a order by cognome", Attore.class).getResultList();
	}

	@Override
	public List<Attore> orderZA() {
		EntityManager em = PersistenceUtil.getEntityManager();
		return em.createQuery("select a from Attore a order by cognome desc", Attore.class).getResultList();		
	}

	
}
