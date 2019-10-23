package com.api.dao;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.api.model.User;

@SuppressWarnings("unchecked")

@Repository
public interface UserDao extends CrudRepository<User, Long> {

	User save(User user);

	User findByUserName(String username);
}
