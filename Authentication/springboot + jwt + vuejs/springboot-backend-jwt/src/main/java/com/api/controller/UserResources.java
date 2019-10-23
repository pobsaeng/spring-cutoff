package com.api.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.api.model.User;
import com.api.service.UserService;

@RestController
@RequestMapping("/rest")
public class UserResources {

	@Autowired
	private UserService userService;

	@RequestMapping("/user/users")
	public String loginSuccess() {
		return "Login Successful!";
	}

	@RequestMapping(value = "/user/username", method = RequestMethod.POST)
	public User findByUserName(@RequestBody String username) {
		User u = userService.findByUserName(username);
		return u;
	}

	@RequestMapping(value = "/user/update", method = RequestMethod.POST)
	public User updateUser(@RequestBody User user) {
		return userService.save(user);
	}
	
	@RequestMapping(value = "/user/findOne", method = RequestMethod.GET)
	public User findOne(@RequestBody User user) {
		return userService.save(user);
	}
}
