package com.ecommerce.dao;

import java.sql.Connection;
import java.util.List;

import com.ecommerce.mapper.RowMapper;

public interface IGenericDAO<T> {
	Connection getConnection();
	List<T> query(String sql, RowMapper<T> rowMapper, Object... parameters);

}
