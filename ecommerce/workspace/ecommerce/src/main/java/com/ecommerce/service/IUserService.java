package com.ecommerce.service;

import com.ecommerce.model.User;

public interface IUserService {
	boolean exist(String username);

	User insert(User user);
	User findOneById(Integer id);
	//dat
	User getUser(String username);
	boolean update(User user);
	User findOneByEmail(String email);
}
