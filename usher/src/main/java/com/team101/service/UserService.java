package com.team101.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.team101.dao.UserDao;
import com.team101.model.User;

@Service("userService")
public class UserService {

	@Autowired
	private UserDao userDao;

	public void create(User user) {
		userDao.insert(user);
	}

	public void remove(User user) {
		userDao.delete(user);
	}

	public void modify(User user) {
		userDao.modify(user);
	}

	public List<User> listAll() {
		return userDao.getAll();
	}

	public boolean validateField(User user) {
		return true;
	}

	public boolean validateEqual(User user, List<User> list) {
		for (User user2 : list) {

			if (user.getUserName() == user2.getUserName()) {
				return true;
			}
		}
		return false;
	}

}