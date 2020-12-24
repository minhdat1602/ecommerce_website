package com.ecommerce.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.ecommerce.model.User;

public class UserMapper implements RowMapper<User>{

	@Override
	public User mapRow(ResultSet resultSet) {
		User user = new User();
		try {
			user.setId(resultSet.getInt("id"));
			user.setFullname(resultSet.getString("fullname"));
			user.setUsername(resultSet.getString("username"));
			user.setPassword(resultSet.getString("password"));
			user.setAddress(resultSet.getString("address"));
			user.setEmail(resultSet.getString("email"));
			user.setPhone(resultSet.getString("phone"));
			user.setGender(resultSet.getString("gender"));
			user.setBirth(resultSet.getDate("birthday"));
			user.setStatus(resultSet.getInt("status"));
		} catch (SQLException e) {
			return null;
		}
		return user;
	}

}
