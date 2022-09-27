package org.generationitaly.progettocinema.repository.impl;

import javax.persistence.EntityManager;

import org.generationitaly.progettocinema.entity.Attore;
import org.generationitaly.progettocinema.repository.AttoreRepository;
import org.generationitaly.progettocinema.util.PersistenceUtil;

public class AttoreRepositoryImpl extends CrudRepositoryImpl<Attore,Integer> implements AttoreRepository{
	
	public AttoreRepositoryImpl() {
		super(Attore.class);
	}

	@Override
	public Attore findByCognome(String cognome) {
		EntityManager em = PersistenceUtil.getEntityManager();
		
		return em.createQuery("select a from Attore a where a.cognome=:cognome", Attore.class).setParameter("cognome", cognome).getSingleResult();
	}
	
}
