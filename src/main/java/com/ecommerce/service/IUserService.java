package com.ecommerce.service;

import com.ecommerce.model.User;

public interface IUserService {
	boolean exist(String username);

	Integer insert(User user);
	User findOneById(Integer id);
}
