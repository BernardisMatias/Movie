package com.accenture.movie.controller;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.accenture.movie.data.MovieDAO;
import com.accenture.movie.model.Movie;

@Controller
public class MovieController {

	@Autowired
	MovieDAO movieDAO;
	
	@RequestMapping("/goToList")
	public ModelAndView goToList(){
		ModelAndView m = new ModelAndView("/list");
		return m;
	}
	
	@RequestMapping("/foodDrink")
	public ModelAndView foodDrink(){
		ModelAndView m = new ModelAndView("/foodDrink");
		return m;
	}
	
	@RequestMapping(path="/movies", method=RequestMethod.GET)
	public @ResponseBody List<Movie> movieList(){
		List<Movie> movieList = movieDAO.getMovieList();
		return movieList;
	}
	
	@RequestMapping(path="/delete/{id}", method=RequestMethod.DELETE)
	public @ResponseBody void deleteMovie(@PathVariable("id")String id){
		Movie movie = movieDAO.getMovie(Long.parseLong(id));
		movieDAO.deleteMovie(movie);
	}
	
	@RequestMapping(path="/add/movies", method=RequestMethod.POST)
	public @ResponseBody Movie addMovie(Movie movie){
		movieDAO.addMovie(movie);
		return movie;
	}

	@RequestMapping(path="/update/", method=RequestMethod.POST)
	public @ResponseBody Movie updateMovie(Movie movie){
		System.out.println(movie.getTitulo() +" "+ movie.getDuracion());
		movieDAO.updateMovie(movie);
		return movie;
	}
}