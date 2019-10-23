package me.aboullaite.dao;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import me.aboullaite.model.Users;

@Repository
public interface UserDao extends CrudRepository<Users, Long> {
	Users save(Users user);
	Users findByEmail(String email);
}
