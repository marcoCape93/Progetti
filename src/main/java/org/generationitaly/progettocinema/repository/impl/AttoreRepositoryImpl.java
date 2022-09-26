package org.generationitaly.progettocinema.repository.impl;

import org.generationitaly.progettocinema.entity.Attore;
import org.generationitaly.progettocinema.repository.AttoreRepository;

public class AttoreRepositoryImpl extends CrudRepositoryImpl<Attore,Integer> implements AttoreRepository{
	
	public AttoreRepositoryImpl() {
		super(Attore.class);
	}
	
}
