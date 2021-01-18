package com.ecommerce.dao;

import java.util.List;

import com.ecommerce.model.Order;

public interface IOrderDAO extends IGenericDAO<Order>{
	List<Order> findAll();
}
