package com.ecommerce.service;

import java.util.List;

import com.ecommerce.model.Order;
import com.ecommerce.model.OrderDetails;

public interface IOrderService {
	List<Order> findAll();

	Order findOne(Integer id);
}
