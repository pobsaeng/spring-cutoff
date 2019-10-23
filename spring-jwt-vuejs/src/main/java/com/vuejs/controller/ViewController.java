package com.vuejs.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/")
public class ViewController {

	
	@GetMapping({"/", "/countries"})
	public ModelAndView countries(ModelAndView model) {
		model.getModel().put("mydata", "Hello");
		model.getModel().put("regions", "55555");
		model.setViewName("countries");
		return model;
	}
}
