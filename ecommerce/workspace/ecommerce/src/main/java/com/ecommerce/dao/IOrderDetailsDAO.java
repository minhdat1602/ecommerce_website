package com.ecommerce.dao;

import java.util.List;

import com.ecommerce.model.OrderDetails;

public interface IOrderDetailsDAO extends IGenericDAO<OrderDetails>{

	List<OrderDetails> findAllOrderDetail(Integer id);
	
}
