package com.ecommerce.dao.impl;

import com.ecommerce.dao.IOrderDetailDAO;
import com.ecommerce.mapper.OrderDetailMapper;
import com.ecommerce.model.OrderDetails;

import java.util.List;

public class OrderDetailDAO extends AbstractDAO<OrderDetails> implements IOrderDetailDAO {


    @Override
    public List<OrderDetails> findViaOrderId(Integer orderID) {
        String sql = "select * from orders_detail where order_id = ?";
        return query(sql, new OrderDetailMapper(), orderID);
    }
}
