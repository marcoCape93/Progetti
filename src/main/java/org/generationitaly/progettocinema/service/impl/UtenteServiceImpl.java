package org.generationitaly.progettocinema.service.impl;

import java.util.List;

import org.generationitaly.progettocinema.entity.Utente;
import org.generationitaly.progettocinema.repository.UtenteRepository;
import org.generationitaly.progettocinema.repository.impl.UtenteRepositoryImpl;
import org.generationitaly.progettocinema.service.UtenteService;
import org.generationitaly.progettocinema.util.PersistenceUtil;

public class UtenteServiceImpl implements UtenteService{
	
	private UtenteRepository utenteRepository = new UtenteRepositoryImpl();
	
	@Override
	public List<Utente> findAll() {
		List<Utente> utente = null;
		try {
			PersistenceUtil.beginTransaction();
			utente = utenteRepository.findAll();
			PersistenceUtil.commitTransaction();
		} catch (Exception e) {
			System.err.println(e.getMessage());
			PersistenceUtil.rollbackTransaction();
		} finally {
			PersistenceUtil.closeEntityManager();
		}
		return utente;
	}
	
	@Override
	public void save(Utente utente) {
		try {
			PersistenceUtil.beginTransaction();
			utenteRepository.save(utente);
			PersistenceUtil.commitTransaction();
		} catch (Exception e) {
			System.err.println(e.getMessage());
			PersistenceUtil.rollbackTransaction();
		} finally {
			PersistenceUtil.closeEntityManager();
		}
	}
	
	@Override
	public void delete(int id) {
		try {
			PersistenceUtil.beginTransaction();
			Utente utente = utenteRepository.findById(id);
			utenteRepository.delete(utente);
			PersistenceUtil.commitTransaction();
		} catch (Exception e) {
			System.err.println(e.getMessage());
			PersistenceUtil.rollbackTransaction();
		} finally {
			PersistenceUtil.closeEntityManager();
		}
	}
	
}
