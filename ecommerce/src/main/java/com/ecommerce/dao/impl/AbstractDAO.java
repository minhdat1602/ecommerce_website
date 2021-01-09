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

public class AbstractDAO<T> implements IGenericDAO<T>{

	@Override
	public Connection getConnection() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			String user = "root";
			String password = "";
			String url = "jdbc:mysql://localhost:3306/fashidb";
			return DriverManager.getConnection(url, user, password);
		} catch (ClassNotFoundException | SQLException e) {
			System.out.println("error connection");
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
	@Override
	public void update(String sql, Object...parameters) {
		PreparedStatement preparedStatement = null;
		Connection connection = getConnection();
		if (connection != null) {
			try {
				preparedStatement = connection.prepareStatement(sql);

				System.out.println("aaaaaaaaaaaaaaaaaaaaaaaaa");
				setParameters(preparedStatement, parameters);
				System.out.println("bbbbbbbbbbbbbbbbbbbbbbbbbbb");
				preparedStatement.executeUpdate();
				System.out.println("cccccccccccccccccccccccccc");
			} catch (SQLException e) {
				System.out.println("error in update 1");
			} finally {
				try {

					if (preparedStatement != null) {
						preparedStatement.close();
					}
					if (connection != null) {
						connection.close();
					}
				} catch (SQLException e) {
					System.out.println("error in update 3");
				}
			}
		}
	}


	private void setParameters(PreparedStatement preparedStatement, Object... parameters) {
		for (int i = 0; i < parameters.length; i++) {
			int index = i+1;
			try {
				if (parameters[i] instanceof Integer) {
					preparedStatement.setInt(index, (Integer) parameters[i]);
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
				if (parameters[i] instanceof Double) {
					preparedStatement.setDouble(index, (Double) parameters[i]);
				}
			} catch (Exception e) {
				System.out.println("error in parameters");
				e.printStackTrace();
			}
		}
	}


}
