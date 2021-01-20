package com.ecommerce.dao.impl;

import java.util.List;

import com.ecommerce.dao.IOrderDAO;
import com.ecommerce.mapper.OrderDetailsMapper;
import com.ecommerce.mapper.OrderMapper;
import com.ecommerce.model.Order;
import com.ecommerce.model.OrderDetails;

public class OrderDAO extends AbstractDAO<Order> implements IOrderDAO{

	@Override
	public List<Order> findAll() {
		String sql = "select * from orders";
		return query(sql, new OrderMapper());
	}

	@Override
	public Order findOne(Integer id) {
		String sql = "select * from orders where id = ?";
		return query(sql, new OrderMapper(), id).get(0);
	}
	
}
