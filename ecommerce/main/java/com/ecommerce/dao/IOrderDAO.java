package com.ecommerce.dao;

import com.ecommerce.model.Order;

import java.util.List;

public interface IOrderDAO {
    List<Order> findAll();
    Order findViaId(Integer id);
    Integer save(Order order);
    void update(Order order);
}
