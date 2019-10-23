package com.api.service;

import com.api.model.User;

public interface UserService {
	User save(User user);

	User findByUserName(String username);
}
