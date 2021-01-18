package com.ecommerce.service;

import com.ecommerce.model.Order;

import java.util.List;

public interface IOrderService {
    List<Order> findAll();
    Order findOneById(Integer id);
    Order save(Order order);
    void update(Order order);
}
