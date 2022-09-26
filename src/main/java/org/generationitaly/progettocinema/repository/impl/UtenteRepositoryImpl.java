package org.generationitaly.progettocinema.repository.impl;

import org.generationitaly.progettocinema.entity.Utente;
import org.generationitaly.progettocinema.repository.UtenteRepository;

public class UtenteRepositoryImpl extends CrudRepositoryImpl<Utente,Integer> implements UtenteRepository{
	
	public UtenteRepositoryImpl() {
		super(Utente.class);
	}
	
}
