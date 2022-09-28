package org.generationitaly.progettocinema.repository.impl;

import javax.persistence.EntityManager;

import org.generationitaly.progettocinema.entity.Utente;
import org.generationitaly.progettocinema.repository.UtenteRepository;
import org.generationitaly.progettocinema.util.PersistenceUtil;

public class UtenteRepositoryImpl extends CrudRepositoryImpl<Utente,Integer> implements UtenteRepository{
	
	public UtenteRepositoryImpl() {
		super(Utente.class);
	}

	@Override
	public Utente findByUsername(String x) {
		EntityManager em = PersistenceUtil.getEntityManager();
		return em.createQuery("select a from Utente a where a.username=:username", Utente.class).setParameter("username", x).getSingleResult();
	}
	
}
