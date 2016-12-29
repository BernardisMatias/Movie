package com.accenture.movie.data;


import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;

import com.accenture.movie.model.Movie;

public class MovieDAO {

	//Fabrica se cesiones, sirve para conectar la base de datos con el archivo Java
	@Autowired
	SessionFactory sessionFactory;
	
	@Transactional
	public Movie getMovie(Long id){
		
		Session s = sessionFactory.openSession(); //Se abre la sesion con la base de datos
		Movie m = (Movie) s.get(Movie.class, id); //Trae los objetos de la clase Movie con sus id
		s.close();
		return m;
	}
	
	public List<Movie> getMovieList(){
		Session s = sessionFactory.openSession();
		@SuppressWarnings("unchecked")
		List<Movie> movieList = s.createQuery("from Movie").list(); //Session, quien conecta la Query con el java, Trae los datos de la query de la clase Movie.
		s.close(); //Siempre cerrar sesion
		return movieList;
	}
	
	@Transactional
	public void deleteMovie (Movie movie){
		Session s = sessionFactory.openSession();
		Transaction t = s.beginTransaction(); 
		s.delete(movie);
		t.commit();
		s.close();
	}
	
	@Transactional
	public void addMovie(Movie movie){
		Session s = sessionFactory.openSession();
		Transaction t = s.beginTransaction();
		s.save(movie);
		t.commit();
		s.close();
	}
	
	@Transactional
	public void updateMovie(Movie movie){
		Session s = sessionFactory.openSession();
		Transaction t = s.beginTransaction();
		s.update(movie);
		t.commit();
		s.close();
	}

}
