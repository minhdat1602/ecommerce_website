package com.ecommerce.service.impl;

import java.util.List;

import javax.inject.Inject;

import com.ecommerce.dao.IOrderDAO;
import com.ecommerce.model.Order;
import com.ecommerce.service.IOrderService;

public class OrderService implements IOrderService{
	@Inject
	private IOrderDAO orderDAO;
	
	@Override
	public List<Order> findAll() {
		return orderDAO.findAll();
	}
	
}
