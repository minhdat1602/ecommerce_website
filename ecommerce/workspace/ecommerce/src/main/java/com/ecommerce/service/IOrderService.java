package com.ecommerce.service;

import java.util.List;

import com.ecommerce.model.Order;

public interface IOrderService {
	List<Order> findAll();
}
