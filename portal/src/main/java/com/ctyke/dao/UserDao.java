package com.ctyke.dao;

import java.util.List;

import com.ctyke.model.User;

public interface UserDao {
	User findById(int id);

	void saveUser(User user);
	
	void deleteUserById(int id);
	
	List<User> findAllUser();

	User findUserByUsername(String username);
	
	boolean isValidUser(String username, String password);
}
