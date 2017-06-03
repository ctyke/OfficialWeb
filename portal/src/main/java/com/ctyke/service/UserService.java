package com.ctyke.service;

import java.util.List;

import com.ctyke.model.User;

public interface UserService {
	User findById(int id);
	
	void saveUser(User user);
	
	void updateUser(User user);
	
	void deleteUserById(int id);

	List<User> findAllUser(); 
	
	User findUserByUsername(String id);

	boolean isUsernameUnique(String id);
	
	boolean isValidUser(String username, String password);

	void deleteAllUsers();
}
