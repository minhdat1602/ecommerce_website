package com.ecommerce.dao.impl;

import com.ecommerce.dao.IUserDAO;
import com.ecommerce.mapper.UserMapper;
import com.ecommerce.model.User;

public class UserDAO extends AbstractDAO<User> implements IUserDAO{
	
	@Override
	public boolean exist(String username) {
		String sql = "select * from users where username = ?";
		if (query(sql, new UserMapper(), username).size()>0)return true;
		else return false;
	}

	@Override
	public Integer insert(User user) {
		StringBuilder sql = new StringBuilder("insert into users (username, password, email, phone, gender,birthday,address,status,group_id,date_register,fullname) ");
		sql.append("value (?,?,?,?,?,?,?,?,?,?,?) ");
		return insert(sql.toString(),
				user.getUsername(),
				user.getPassword(),
				user.getEmail(),
				user.getPhone(),
				user.getGender(),
				user.getBirth(),
				user.getAddress(),
				user.getStatus(),
				user.getGroupId(),
				user.getDateRegister(),
				user.getFullname());
				
	}

	@Override
	public User findOneById(Integer id) {
		String sql = "select * from users where id = ?";
		return query(sql, new UserMapper(), id).get(0);
	}

}
