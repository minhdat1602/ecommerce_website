package com.fashi.service.impl;

import javax.inject.Inject;

import com.fashi.dao.IUserDAO;
import com.fashi.model.User;
import com.fashi.service.IUserService;

public class UserService implements IUserService{
	@Inject
	private IUserDAO userDAO;
	
	@Override
	public boolean exist(String username) {
		return userDAO.exist(username);
	}

	@Override
	public Integer insert(User user) {
		return userDAO.insert(user);
	}

	@Override
	public User findOneById(Integer id) {
		return userDAO.findOneById(id);
	}
	
}
