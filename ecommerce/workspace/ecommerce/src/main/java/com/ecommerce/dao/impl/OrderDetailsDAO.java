package com.ecommerce.dao.impl;

import java.util.List;

import com.ecommerce.dao.IOrderDetailsDAO;
import com.ecommerce.mapper.OrderDetailsMapper;
import com.ecommerce.model.OrderDetails;

public class OrderDetailsDAO extends AbstractDAO<OrderDetails> implements IOrderDetailsDAO{

	@Override
	public List<OrderDetails> findAllOrderDetail(Integer id) {
		String sql = "select * from orders_detail where order_id = ?";
		return query(sql, new OrderDetailsMapper(), id);
	}

}
