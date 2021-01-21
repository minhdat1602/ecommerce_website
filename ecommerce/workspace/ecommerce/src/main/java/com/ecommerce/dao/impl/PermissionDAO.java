package com.ecommerce.dao.impl;

import java.util.List;

import com.ecommerce.dao.IPermissionDAO;
import com.ecommerce.mapper.PermissionMapper;
import com.ecommerce.model.Permission;

public class PermissionDAO extends AbstractDAO<Permission> implements IPermissionDAO {

	@Override
	public List<Permission> findAllByGroupCode(String sorting) {
		String sql = "select p.id,p.name,p.action from users_group ug join permissions p on ug.id = p.user_group_id where code = ?";
		return query(sql, new PermissionMapper(),sorting);
	}

}
