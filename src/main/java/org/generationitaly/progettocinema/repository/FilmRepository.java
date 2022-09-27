package org.generationitaly.progettocinema.repository;

import java.util.List;

import org.generationitaly.progettocinema.entity.Film;

public interface FilmRepository extends CrudRepository<Film, Integer>{

	List<Film> findByAnno(int anno);

	List<Film> findByGenere(String genere);

	List<String> findAllGenere();

	List<Film> findByTitolo(String titolo);

	List<Integer> findAllAnno();

}
