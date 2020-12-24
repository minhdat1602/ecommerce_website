package com.fashi.service;

import com.fashi.model.User;

public interface IUserService {
	boolean exist(String username);

	Integer insert(User user);
	User findOneById(Integer id);
}
