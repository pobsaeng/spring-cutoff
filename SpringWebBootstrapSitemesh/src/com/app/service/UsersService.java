package com.app.service;

import java.util.List;

import com.app.model.Users;

public interface UsersService {
	public void addUsers(Users users) throws Exception;
	public void updateUsers(Users users) throws Exception;
	public void deleteUsers(Users users) throws Exception;
	public List<Users> getAllUsers() throws Exception;
	public Users getUsersById(String id) throws Exception;
	public Users getUserByLogin(String username) throws Exception;
	public List<String> getUserRoles(String username) throws Exception;
}
