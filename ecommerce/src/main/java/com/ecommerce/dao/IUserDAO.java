package com.ecommerce.dao;

import com.ecommerce.model.User;

public interface IUserDAO extends IGenericDAO<User>{
	boolean exist(String username);

	Integer insert(User user);

	User findOneById(Integer id);
}
