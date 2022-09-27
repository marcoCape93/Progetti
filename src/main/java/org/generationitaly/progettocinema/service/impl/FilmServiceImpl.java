package org.generationitaly.progettocinema.service.impl;

import java.util.List;

import org.generationitaly.progettocinema.entity.Film;
import org.generationitaly.progettocinema.repository.FilmRepository;
import org.generationitaly.progettocinema.repository.impl.FilmRepositoryImpl;
import org.generationitaly.progettocinema.service.FilmService;
import org.generationitaly.progettocinema.util.PersistenceUtil;

public class FilmServiceImpl implements FilmService{
	
	private FilmRepository filmRepository = new FilmRepositoryImpl();
	
	
	@Override
	public List<Film> findAll() {
		List<Film> film = null;
		try {
			PersistenceUtil.beginTransaction();
			film = filmRepository.findAll();
			PersistenceUtil.commitTransaction();
		} catch (Exception e) {
			System.err.println(e.getMessage());
			PersistenceUtil.rollbackTransaction();
		} finally {
			PersistenceUtil.closeEntityManager();
		}
		return film;
	}


	@Override
	public Film findById(int id) {
		Film film = null;
		try {
			PersistenceUtil.beginTransaction();
			film = filmRepository.findById(id);
			PersistenceUtil.commitTransaction();
		} catch (Exception e) {
			System.err.println(e.getMessage());
			PersistenceUtil.rollbackTransaction();
		} finally {
			PersistenceUtil.closeEntityManager();
		}
		return film;
	}
	
	@Override
	public List<Film> findByTitolo(String titolo) {
		List<Film> film = null;
		try {
			PersistenceUtil.beginTransaction();
			film = filmRepository.findByTitolo(titolo);
			PersistenceUtil.commitTransaction();
		} catch (Exception e) {
			System.err.println(e.getMessage());
			PersistenceUtil.rollbackTransaction();
		} finally {
			PersistenceUtil.closeEntityManager();
		}
		return film;
	}

	@Override
	public List<Film> findByAnno(int anno) {
		List<Film> film = null;
		try {
			PersistenceUtil.beginTransaction();
			film = filmRepository.findByAnno(anno);
			PersistenceUtil.commitTransaction();
		} catch (Exception e) {
			System.err.println(e.getMessage());
			PersistenceUtil.rollbackTransaction();
		} finally {
			PersistenceUtil.closeEntityManager();
		}
		return film;
	}


	@Override
	public List<Film> findByGenere(String genere) {
		List<Film> film = null;
		try {
			PersistenceUtil.beginTransaction();
			film = filmRepository.findByGenere(genere);
			PersistenceUtil.commitTransaction();
		} catch (Exception e) {
			System.err.println(e.getMessage());
			PersistenceUtil.rollbackTransaction();
		} finally {
			PersistenceUtil.closeEntityManager();
		}
		return film;
	}
	@Override
	public List<String> findAllGenere() {
		List<String> film = null;
		try {
			PersistenceUtil.beginTransaction();
			film = filmRepository.findAllGenere();
			PersistenceUtil.commitTransaction();
		} catch (Exception e) {
			System.err.println(e.getMessage());
			PersistenceUtil.rollbackTransaction();
		} finally {
			PersistenceUtil.closeEntityManager();
		}
		return film;
	}
	@Override
	public List<Integer> findAllAnno() {
		List<Integer> anno = null;
		try {
			PersistenceUtil.beginTransaction();
			anno = filmRepository.findAllAnno();
			PersistenceUtil.commitTransaction();
		} catch (Exception e) {
			System.err.println(e.getMessage());
			PersistenceUtil.rollbackTransaction();
		} finally {
			PersistenceUtil.closeEntityManager();
		}
		return anno;
	}
	
	
}
