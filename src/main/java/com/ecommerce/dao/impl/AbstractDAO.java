package com.ecommerce.dao.impl;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import com.ecommerce.dao.IGenericDAO;
import com.ecommerce.mapper.RowMapper;
import com.mysql.jdbc.Driver;

public class AbstractDAO<T> implements IGenericDAO<T>{

	@Override
	public Connection getConnection() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			String user = "root";
			String password = "016961193922";
			String url = "jdbc:mysql://localhost:3306/fashi";
			return DriverManager.getConnection(url, user, password);
		} catch (ClassNotFoundException | SQLException e) {
			return null;
		}
	}
	
	@Override
	public List<T> query(String sql, RowMapper<T> rowMapper, Object... parameters) {
		List<T> results = new ArrayList<T>();
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		Connection connection = getConnection();
		if (connection != null) {
			try {
				preparedStatement = connection.prepareStatement(sql);
				setParameters(preparedStatement, parameters);
				resultSet = preparedStatement.executeQuery();
				while(resultSet.next()) {
					results.add(rowMapper.mapRow(resultSet));
				}
				return results;
			} catch (SQLException e) {
				return null;
			} finally {
				try {
					if (resultSet != null) {
						resultSet.close();
					}
					if (preparedStatement != null) {
						preparedStatement.close();
					}
					if (connection != null) {
						connection.close();
					}
				} catch (Exception e) {
					return null;
				}
			}
			
		}
		return null;
	}
	
	@Override
	public Integer insert(String sql, Object... parameters) {
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		Connection connection = getConnection();
		Integer id = null;
		if (connection != null) {
			try {
				connection.setAutoCommit(false);
				preparedStatement = connection.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
				setParameters(preparedStatement, parameters);
				preparedStatement.executeUpdate();
				resultSet = preparedStatement.getGeneratedKeys();
				while (resultSet.next()) {
					id = resultSet.getInt(1);
				}
				connection.commit();
				return id;
			} catch (SQLException e) {
				try {
					connection.rollback();
				} catch (SQLException e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
				}
				return null;
			} finally {
				try {
					if (connection != null) {
						connection.close();
					}
					if (preparedStatement != null) {
						preparedStatement.close();
					}
					if (resultSet != null) {
						resultSet.close();
					}
				} catch (SQLException e) {
					return null;
				}
			}
		}
		return null;
	}

	private void setParameters(PreparedStatement preparedStatement, Object... parameters) {
		for (int i = 0; i < parameters.length; i++) {
			int index = i+1;
			try {
				if (parameters[i] instanceof Integer) {
					preparedStatement.setInt(index, (int) parameters[i]);
				}
				if (parameters[i] instanceof String) {
					preparedStatement.setString(index, (String) parameters[i]);
				}
				if (parameters[i] instanceof Timestamp) {
					preparedStatement.setTimestamp(index, (Timestamp) parameters[i]);
				}
				if (parameters[i] instanceof Date) {
					preparedStatement.setDate(index, (Date) parameters[i]);
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}


}
