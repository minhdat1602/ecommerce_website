package com.fashi.dao;

import java.sql.Connection;
import java.util.List;

import com.fashi.mapper.RowMapper;

public interface IGenericDAO<T> {
	Connection getConnection();
	List<T> query(String sql, RowMapper<T> rowMapper, Object... parameters);
	Integer insert(String sql, Object...parameters);

}
