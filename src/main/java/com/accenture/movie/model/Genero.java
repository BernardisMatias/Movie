package com.accenture.movie.model;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.hibernate.annotations.Fetch;
import org.hibernate.annotations.FetchMode;

import com.fasterxml.jackson.annotation.JsonBackReference;

@Entity
@Table(name="genero")
public class Genero {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id")
	private long id;
	
	@Column(name="nombre")
	private String nombre;

	@OneToMany(mappedBy = "idGenero",  fetch=FetchType.EAGER)
	@Fetch(FetchMode.SUBSELECT)
	@JsonBackReference
	private List<Movie> listMovie = new ArrayList<Movie>();

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public List<Movie> getListMovie() {
		return listMovie;
	}

	public void setListMovie(List<Movie> listMovie) {
		this.listMovie = listMovie;
	}
	
}
