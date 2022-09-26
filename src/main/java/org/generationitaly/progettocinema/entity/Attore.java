package org.generationitaly.progettocinema.entity;

import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
@Table(name = "attore")
public class Attore {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id", nullable = false)
	private int id;
	
	@Column(name = "nome", length = 50, nullable = false)
	private String nome;
	
	@Column(name = "cognome", length = 50, nullable = false)
	private String cognome;
	
	@Column(name = "data_nascita", length = 50, nullable = false)
	@Temporal(TemporalType.DATE)
	private Date dataNascita;
	
	@Column(name = "luogo_nascita", length = 50, nullable = false)
	private String luogoNascita;
	
	@Column(name = "biografia", length = 2000, nullable = false)
	private String biografia;
	
	@Column(name = "foto_attore", length = 2000, nullable = false)
	private String foto;
	
	@OneToMany(mappedBy = "attore")
	private List<Film> filmografia;
	
	
}
