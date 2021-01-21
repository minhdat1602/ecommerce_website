package com.ecommerce.dao.impl;

import java.util.List;

import com.ecommerce.dao.IUserGroupDAO;
import com.ecommerce.mapper.UserGroupMapper;
import com.ecommerce.model.UserGroup;

public class UserGroupDAO extends AbstractDAO<UserGroup> implements IUserGroupDAO{

	@Override
	public List<UserGroup> findAll() {
		String sql = "select * from users_group";
		return query(sql, new UserGroupMapper());
	}

}
