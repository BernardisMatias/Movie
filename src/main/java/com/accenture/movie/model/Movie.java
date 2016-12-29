package com.accenture.movie.model;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;


import com.accenture.movie.model.Movie;
import com.fasterxml.jackson.annotation.JsonManagedReference;

@Entity
@Table(name="movie")
public class Movie {
	
	@Id
	@GeneratedValue(strategy= GenerationType.IDENTITY)
	private long id;
	
	@Column
	private String URLimagen;

	@Column
	private String titulo;

	@Column
	private String director;
	
	@Column
	private long duracion;
	
	@OneToOne(cascade=CascadeType.REFRESH, fetch=FetchType.EAGER)
	@JoinColumn(name="idGenero")
	@JsonManagedReference
	private Genero idGenero;
	
	public Movie(){};
	
	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getTitulo() {
		return titulo;
	}

	public void setTitulo(String titulo) {
		this.titulo = titulo;
	}

	public String getDirector() {
		return director;
	}


	public void setDirector(String director) {
		this.director = director;
	}


	public long getDuracion() {
		return duracion;
	}


	public void setDuracion(long duracion) {
		this.duracion = duracion;
	}


	public String getURLimagen() {
		return URLimagen;
	}

	public void setURLimagen(String uRLimagen) {
		URLimagen = uRLimagen;
	}


	public Genero getIdGenero() {
		return idGenero;
	}


	public void setIdGenero(Genero idGenero) {
		this.idGenero = idGenero;
	}
	
}
