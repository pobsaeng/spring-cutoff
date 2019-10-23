package com.app.service.impl;
import java.util.List;
import com.app.dao.UsersDao;
import com.app.model.Users;
import com.app.service.UsersService;

public class UsersServiceImpl implements UsersService{
	private UsersDao usersDao;
	public UsersDao getUsersDao() {
		return usersDao;
	}

	public void setUsersDao(UsersDao usersDao) {
		this.usersDao = usersDao;
	}

	@Override
	public void addUsers(Users users) throws Exception {usersDao.add(users);}

	@Override
	public void updateUsers(Users users) throws Exception {usersDao.update(users);}

	@Override
	public void deleteUsers(Users users) throws Exception {usersDao.delete(users);}

	@Override
	public List<Users> getAllUsers() throws Exception {
		return usersDao.findAllUsers();
	}
	
	@Override
	public Users getUsersById(String id) throws Exception {
		return usersDao.findUsersById(id);
	}

	@Override
	public Users getUserByLogin(String username) throws Exception {
		return usersDao.findUserByLogin(username);
	}

	@Override
	public List<String> getUserRoles(String username) throws Exception {
		return usersDao.findUserRoles(username);
	}
}
