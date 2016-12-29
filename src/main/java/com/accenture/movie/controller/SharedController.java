package com.accenture.movie.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SharedController {
	
	@RequestMapping("/") //Hace el mapping que cuando vaya al / se rediriga al index
	public String Index(){
		return "index";
	}
}
