package com.app.controller;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.app.model.UsersForm;


@Controller
public class FormController {
	
	private static final Logger logger = Logger.getLogger(FormController.class);
	
	@RequestMapping(value = "/helloWorld", method = RequestMethod.GET)
	public ModelAndView printWelcome(@ModelAttribute("usersForm") UsersForm user) {

		ModelAndView mav = new ModelAndView("SubmitForm");
		mav.addObject("message", "Hello World!!!");
		return mav;

	}

	@RequestMapping(value="/submitForm", method = RequestMethod.POST)
    public ModelAndView submittedFromData(@ModelAttribute("usersForm") UsersForm user) {	
		logger.debug("submitted FromData mehtod called");
		ModelAndView mav = new ModelAndView("SubmitForm");
		
		System.out.println(user.getDob());
		System.out.println(user.getName());
		System.out.println(user.getEmail());
		return mav;
	}	
	
	@RequestMapping(value = "/admin", method = RequestMethod.GET)
	public String adminIndex() throws Exception {
		System.out.println("---admin template---");
		return "/back/index_admin";
	}
	
	@RequestMapping(value = "/guest", method = RequestMethod.GET)
	public String guestIndex() throws Exception {
		System.out.println("---guest template---");
		return "/front/index_guest";
	}
}
