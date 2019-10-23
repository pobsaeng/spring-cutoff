package com.devglan.controller;

import com.devglan.config.TokenProvider;
import com.devglan.model.AuthToken;
import com.devglan.model.LoginUser;
import com.devglan.model.User;
import com.devglan.model.UserDto;
import com.devglan.service.UserService;

import io.jsonwebtoken.Jwts;
import io.jsonwebtoken.SignatureAlgorithm;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.bind.annotation.*;

import static com.devglan.model.Constants.TOKEN_PREFIX;

import java.util.Date;

import javax.servlet.ServletException;

@CrossOrigin(origins = "*", maxAge = 3600)
@RestController
@RequestMapping("/token")
public class AuthenticationController {

    @Autowired
    private AuthenticationManager authenticationManager;

    @Autowired
    private TokenProvider jwtTokenUtil;

    @Autowired
    private UserService userService;

    @RequestMapping(value = "/generate-token", method = RequestMethod.GET)
    public ResponseEntity<?> register() throws AuthenticationException {
    	System.out.println("*******************************************************1");
        final Authentication authentication = authenticationManager.authenticate(
                new UsernamePasswordAuthenticationToken(
                        "user",
                        "$2y$12$qoiqlpcKZqd4Dv7YkBvT4.60deaipFFNXfAqKiTbibBjAC0CrEr06"
                )
        );
        System.out.println("*******************************************************2");
        System.out.println(authentication);
        SecurityContextHolder.getContext().setAuthentication(authentication);
        final String token = jwtTokenUtil.generateToken(authentication);
        System.out.println("--------------");
        System.out.println(token);
        System.out.println("--------------");
        return ResponseEntity.ok(new AuthToken(token));
    }
    
    @RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login(@RequestBody User login) throws ServletException {
		System.out.println("---------login------------");
		System.out.println(login.getUsername());
		System.out.println(login.getPassword());

		String jwtToken = "";

		if (login.getUsername() == null || login.getPassword() == null) {
			throw new ServletException("Please fill in username and password");
		}

		String username = login.getUsername();
		String password = login.getPassword();

		User user = userService.findOne(username);
		System.out.println(user);

		if (user == null) {
			throw new ServletException("User name not found.");
		}

		String pwd = user.getPassword();

		if (!password.equals(pwd)) {
			throw new ServletException("Invalid login. Please check your name and password.");
		}

		jwtToken = Jwts.builder().setSubject(username).claim("roles", "user").setIssuedAt(new Date())
				.signWith(SignatureAlgorithm.HS256, "secretkey").compact();

		return jwtToken;
	}
    
    @RequestMapping(value="/signup", method = RequestMethod.POST)
    public User saveUser(@RequestBody UserDto user){
        return userService.save(user);
    }
}
