package com.ecommerce.service.impl;

import javax.inject.Inject;

import com.ecommerce.dao.IUserDAO;
import com.ecommerce.model.User;
import com.ecommerce.service.IUserService;

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
