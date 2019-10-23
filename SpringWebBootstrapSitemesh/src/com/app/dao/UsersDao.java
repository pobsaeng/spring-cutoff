package com.app.dao;

import java.util.List;

import com.app.model.Users;

public interface UsersDao {
	public void add(Users users) throws Exception;
	public void update(Users users) throws Exception;
	public void delete(Users users) throws Exception;
	public List<Users> findAllUsers() throws Exception;
	public Users findUsersById(String id) throws Exception;
	public Users findUserByLogin(String username) throws Exception;
	public List<String> findUserRoles(String username) throws Exception;
}
