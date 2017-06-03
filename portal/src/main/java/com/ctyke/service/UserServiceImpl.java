package com.ctyke.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ctyke.dao.UserDao;
import com.ctyke.model.User;

@Service("userService")
@Transactional
public class UserServiceImpl implements UserService{

	@Autowired
	private UserDao dao;
	
	public User findById(int id) {
		return dao.findById(id);
	}

	public void saveUser(User user) {
		dao.saveUser(user);
	}

	public void updateUser(User user) {
		User entity = dao.findById(user.getId());
		if(entity!=null){
			entity.setName(user.getName());
			entity.setPassword(user.getPassword());
			entity.setAvatar(user.getAvatar());
			
		}
	}

	public void deleteUserById(int id) {
		dao.deleteUserById(id);
	}
	
	public List<User> findAllUser() {
		return dao.findAllUser();
	}

	public User findUserByUsername(String username) {
		return dao.findUserByUsername(username);
	}

	public boolean isUsernameUnique(String username) {
		User user = dao.findUserByUsername(username);
		return (user==null);
	}
	
	public boolean isValidUser(String username, String password) {
		return dao.isValidUser(username, password);
	}

	@Override
	public void deleteAllUsers() {
		// TODO Auto-generated method stub
		
	}

}
