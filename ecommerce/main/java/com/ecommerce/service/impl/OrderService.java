package com.ecommerce.service.impl;

import com.ecommerce.dao.IOrderDAO;
import com.ecommerce.model.Order;
import com.ecommerce.service.IOrderService;
import com.ecommerce.service.IUserService;

import javax.inject.Inject;
import java.util.List;

public class OrderService implements IOrderService {
    @Inject
    private IOrderDAO orderDAO;
    @Inject
    private IUserService userService;

    @Override
    public List<Order> findAll() {

        List<Order> listOrder = orderDAO.findAll();

        for(Order order: listOrder){
            order.setCustomer(userService.findOneById(order.getCustomerId()));
          /*  order.setUser(userService.findOneById(order.getUserId()));*/
        }
        return listOrder;

    }

    @Override
    public Order findOneById(Integer id) {
        Order order = orderDAO.findViaId(id);
        order.setCustomer(userService.findOneById(order.getCustomerId()));
        return order;
    }

    @Override
    public Order save(Order order) {
        return null;
    }

    @Override
    public void update(Order order) {
        orderDAO.update(order);
    }
}
