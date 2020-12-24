package com.fashi.dao;

import com.fashi.model.User;

public interface IUserDAO extends IGenericDAO<User>{
	boolean exist(String username);

	Integer insert(User user);

	User findOneById(Integer id);
}
