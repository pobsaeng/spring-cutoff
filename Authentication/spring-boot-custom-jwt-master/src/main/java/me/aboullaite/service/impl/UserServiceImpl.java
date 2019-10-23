package me.aboullaite.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import me.aboullaite.dao.UserDao;
import me.aboullaite.model.Users;
import me.aboullaite.service.UserService;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	private UserDao userDao;

	public Users save(Users user) {
		return userDao.save(user);
	}

	public Users findByEmail(String email) {
		return userDao.findByEmail(email);
	}
}
