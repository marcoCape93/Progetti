package org.generationitaly.progettocinema.service.impl;




import org.generationitaly.progettocinema.entity.FilmUtenti;
import org.generationitaly.progettocinema.repository.FilmUtentiRepository;
import org.generationitaly.progettocinema.repository.impl.FilmUtentiRepositoryImpl;
import org.generationitaly.progettocinema.service.FilmUtentiService;
import org.generationitaly.progettocinema.util.PersistenceUtil;

public class FilmUtentiServiceImpl implements FilmUtentiService{

	private FilmUtentiRepository filmUtentiRepository=new FilmUtentiRepositoryImpl();
	
	@Override
	public void save(FilmUtenti filmUtenti) {
		try {
			PersistenceUtil.beginTransaction();
			filmUtentiRepository.save(filmUtenti);
			PersistenceUtil.commitTransaction();
		} catch (Exception e) {
			System.err.println(e.getMessage());
			PersistenceUtil.rollbackTransaction();
		} finally {
			PersistenceUtil.closeEntityManager();
		}
	}
	
	@Override
	public int FindByIdUtente(int id) {
		int voto= 0;
		try {
			PersistenceUtil.beginTransaction();
			voto = filmUtentiRepository.FindByIdUtente(id);
			PersistenceUtil.commitTransaction();
		} catch (Exception e) {
			System.err.println(e.getMessage());
			PersistenceUtil.rollbackTransaction();
		} finally {
			PersistenceUtil.closeEntityManager();
		}
		return voto;
		
	}


	@Override
	public double FindAvgVoto(int id) {
		double voto= 0;
		try {
			PersistenceUtil.beginTransaction();
			voto = filmUtentiRepository.FindAvgVoto(id);
			PersistenceUtil.commitTransaction();
		} catch (Exception e) {
			System.err.println(e.getMessage());
			PersistenceUtil.rollbackTransaction();
		} finally {
			PersistenceUtil.closeEntityManager();
		}
		return voto;
	}


	@Override
	public FilmUtenti FindByIdUtenteIdFilm(int idU, int idF) {
		FilmUtenti filmUtenti= null;
		try {
			PersistenceUtil.beginTransaction();
			filmUtenti = filmUtentiRepository.FindByIdUtenteIdFilm(idU,idF);
			PersistenceUtil.commitTransaction();
		} catch (Exception e) {
			System.err.println(e.getMessage());
			PersistenceUtil.rollbackTransaction();
		} finally {
			PersistenceUtil.closeEntityManager();
		}
		return filmUtenti;
	}
	
	@Override
	public void update(FilmUtenti filmUtenti) {
		try {
			PersistenceUtil.beginTransaction();
			filmUtentiRepository.update(filmUtenti);
			PersistenceUtil.commitTransaction();
		} catch (Exception e) {
			System.err.println(e.getMessage());
			PersistenceUtil.rollbackTransaction();
		} finally {
			PersistenceUtil.closeEntityManager();
		}
	}

}
