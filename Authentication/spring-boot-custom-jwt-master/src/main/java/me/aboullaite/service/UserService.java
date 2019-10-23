package me.aboullaite.service;

import me.aboullaite.model.Users;

public interface UserService {
	Users save(Users user);

	Users findByEmail(String email);

}
