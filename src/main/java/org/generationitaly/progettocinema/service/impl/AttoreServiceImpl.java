package org.generationitaly.progettocinema.service.impl;

import java.util.List;

import org.generationitaly.progettocinema.entity.Attore;
import org.generationitaly.progettocinema.repository.AttoreRepository;
import org.generationitaly.progettocinema.repository.impl.AttoreRepositoryImpl;
import org.generationitaly.progettocinema.service.AttoreService;
import org.generationitaly.progettocinema.util.PersistenceUtil;

public class AttoreServiceImpl implements AttoreService {
	
	private AttoreRepository attoreRepository = new AttoreRepositoryImpl();
	
	
	@Override
	public List<Attore> findAll() {
		List<Attore> attori = null;
		try {
			PersistenceUtil.beginTransaction();
			attori = attoreRepository.findAll();
			PersistenceUtil.commitTransaction();
		} catch (Exception e) {
			System.err.println(e.getMessage());
			PersistenceUtil.rollbackTransaction();
		} finally {
			PersistenceUtil.closeEntityManager();
		}
		return attori;
	}


	@Override
	public Attore findById(int id) {
		Attore attore = null;
		try {
			PersistenceUtil.beginTransaction();
			attore = attoreRepository.findById(id);
			PersistenceUtil.commitTransaction();
		} catch (Exception e) {
			System.err.println(e.getMessage());
			PersistenceUtil.rollbackTransaction();
		} finally {
			PersistenceUtil.closeEntityManager();
		}
		return attore;
	}

}
