package com.ecommerce.dao;

import com.ecommerce.model.OrderDetails;

import java.util.List;

public interface IOrderDetailDAO {
    List<OrderDetails> findViaOrderId(Integer orderID);
}
