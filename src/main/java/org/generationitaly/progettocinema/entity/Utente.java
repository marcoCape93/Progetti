package org.generationitaly.progettocinema.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "utente")
public class Utente {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id", nullable = false)
	private int id;
	
	@Column(name = "nome", length = 50, nullable = false)
	private String nome;
	
	@Column(name = "cognome", length = 50, nullable = false)
	private String cognome;
	
	@Column(name = "username", length = 50, unique = true, nullable = false)
	private String username;
	
	@Column(name = "email", length = 50, unique = true, nullable = false)
	private String email;
	
	@Column(name = "password", length = 12, nullable = false)
	private String password;
	
	
}
