package me.aboullaite.controller;

import java.util.Date;

import javax.servlet.ServletException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import me.aboullaite.model.Users;
import me.aboullaite.service.UserService;

import io.jsonwebtoken.Jwts;
import io.jsonwebtoken.SignatureAlgorithm;

@CrossOrigin(origins = "http://localhost", maxAge = 3600)
@RestController
@RequestMapping("/user")
public class UserController {

	@Autowired
	private UserService userService;

	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public Users registerUser(@RequestBody Users user) {
		return userService.save(user);
	}

//	@RequestMapping(value = "/login", method = RequestMethod.POST)
//	public String login(@RequestBody Users login) throws ServletException {
//
//		String jwtToken = "";
//
//		if (login.getEmail() == null || login.getPassword() == null) {
//			throw new ServletException("Please fill in username and password");
//		}
//
//		String email = login.getEmail();
//		String password = login.getPassword();
//
//		Users user = userService.findByEmail(email);
//
//		if (user == null) {
//			throw new ServletException("User email not found.");
//		}
//
//		String pwd = user.getPassword();
//
//		if (!password.equals(pwd)) {
//			throw new ServletException("Invalid login. Please check your name and password.");
//		}
//
//		jwtToken = Jwts.builder().setSubject(email).claim("roles", "user").setIssuedAt(new Date())
//				.signWith(SignatureAlgorithm.HS256, "secretkey").compact();
//
//		return jwtToken;
//	}
	//For testing
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login() throws ServletException {
		Users login = new Users();
		login.setEmail("pob@gmail.com");
		login.setPassword("1234");
		
		String jwtToken = "";

		if (login.getEmail() == null || login.getPassword() == null) {
			throw new ServletException("Please fill in username and password");
		}

		String email = login.getEmail();
		String password = login.getPassword();

		Users user = userService.findByEmail(email);
		System.out.println(user);

		if (user == null) {
			throw new ServletException("User email not found.");
		}

		String pwd = user.getPassword();

		if (!password.equals(pwd)) {
			throw new ServletException("Invalid login. Please check your name and password.");
		}

		jwtToken = Jwts.builder().setSubject(email).claim("roles", "user").setIssuedAt(new Date())
				.signWith(SignatureAlgorithm.HS256, "secretkey").compact();
		System.out.println("jwtToken : " + jwtToken);

		return jwtToken;
	}
}
