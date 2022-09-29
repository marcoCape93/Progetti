package org.generationitaly.progettocinema.repository.impl;



import javax.persistence.EntityManager;

import org.generationitaly.progettocinema.entity.FilmUtenti;
import org.generationitaly.progettocinema.repository.FilmUtentiRepository;
import org.generationitaly.progettocinema.util.PersistenceUtil;

public class FilmUtentiRepositoryImpl extends CrudRepositoryImpl<FilmUtenti, FilmUtenti> implements FilmUtentiRepository {

	public FilmUtentiRepositoryImpl() {
		super(FilmUtenti.class);
		
	}
	
	@Override
	public int FindByIdUtente(int id) { // non usata per ora
		EntityManager em = PersistenceUtil.getEntityManager();
		return em.createQuery("select voto from FilmUtenti where utente_id=:id",Integer.class).setParameter("id", id).getSingleResult();
	}

	@Override
	public FilmUtenti FindByIdUtenteIdFilm(int idUtente,int idFilm) {
		EntityManager em = PersistenceUtil.getEntityManager();
		return em.createQuery("select f from FilmUtenti f where utente_id=:idUtente and film_id=:idFilm",FilmUtenti.class).setParameter("idUtente", idUtente).setParameter("idFilm", idFilm).getSingleResult();
	}
	
	@Override
	public double FindAvgVoto(int id) {
		EntityManager em = PersistenceUtil.getEntityManager();
		return em.createQuery("SELECT avg(voto) FROM FilmUtenti WHERE film_id=:id and voto>0",Double.class).setParameter("id", id).getSingleResult();	
	}
	
	
}
