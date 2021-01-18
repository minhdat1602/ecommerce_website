package com.ecommerce.dao.impl;

import java.util.List;

import com.ecommerce.dao.IOrderDAO;
import com.ecommerce.mapper.OrderMapper;
import com.ecommerce.model.Order;

public class OrderDAO extends AbstractDAO<Order> implements IOrderDAO{

	@Override
	public List<Order> findAll() {
		String sql = "select * from orders";
		return query(sql, new OrderMapper());
	}
	
}
