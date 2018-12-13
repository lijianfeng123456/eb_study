package com.eb.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.eb.dao.UserDao;
import com.eb.pojo.User;

@Service
public class UserService {
	@Autowired
	private UserDao dao;

	public User userLogin(User user) {
		return dao.userLogin(user);
	}

}
