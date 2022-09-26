package org.generationitaly.progettocinema.entity;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "film")
public class Film {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id", nullable = false)
	private int id;
	
	@Column(name = "titolo", length = 50, nullable = false)
	private String titolo;
	
	@Column(name = "anno", nullable = false)
	private int anno;
	
	@Column(name = "paese", length = 50, nullable = false)
	private String paese;
	
	@Column(name = "genere", length = 50, nullable = false)
	private String genere;
	
	@Column(name = "regista", length = 50, nullable = false)
	private String regista;
	
	@Column(name = "distribuzione", length = 50, nullable = false)
	private String distribuzione;
	
	@Column(name = "durata", nullable = false)
	private int durata;
	
	@Column(name = "descrizione", length = 2000, nullable = false)
	private String descrizione;

//	@OneToMany(mappedBy = "film")
//	private List<Attore> cast;
	
	@ManyToMany(targetEntity = Attore.class)
	private List<Attore> cast;
	
	public int getId() {
		return id;
	}

	public String getTitolo() {
		return titolo;
	}

	public void setTitolo(String titolo) {
		this.titolo = titolo;
	}

	public int getAnno() {
		return anno;
	}

	public void setAnno(int anno) {
		this.anno = anno;
	}

	public String getPaese() {
		return paese;
	}

	public void setPaese(String paese) {
		this.paese = paese;
	}

	public String getGenere() {
		return genere;
	}

	public void setGenere(String genere) {
		this.genere = genere;
	}

	public String getRegista() {
		return regista;
	}

	public void setRegista(String regista) {
		this.regista = regista;
	}

	public String getDistribuzione() {
		return distribuzione;
	}

	public void setDistribuzione(String distribuzione) {
		this.distribuzione = distribuzione;
	}

	public int getDurata() {
		return durata;
	}

	public void setDurata(int durata) {
		this.durata = durata;
	}

	public String getDescrizione() {
		return descrizione;
	}

	public void setDescrizione(String descrizione) {
		this.descrizione = descrizione;
	}
	
}



