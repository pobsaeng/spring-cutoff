package com.app.controller;

import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class LoginRoleController {
		
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String loginForm(){
		return "login";

	}
	
	@RequestMapping(value="/loginFail", method = RequestMethod.GET)
	public String loginError(ModelMap model) {

		model.addAttribute("error", "true");
		return "login";
 
	}
	
	@RequestMapping(value = "/loginSuccess", method = RequestMethod.GET)
	public String loginSuccess(ModelMap model, Authentication authentication) {
		System.out.println("--loginSuccess--");
		return "redirect:/home";

	}
	
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(ModelMap model) {

		return "login";

	}

	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public String home(ModelMap model) {
		return "home";

	}
}
