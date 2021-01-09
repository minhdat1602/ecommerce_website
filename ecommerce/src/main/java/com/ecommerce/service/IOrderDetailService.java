package com.ecommerce.service;

import com.ecommerce.model.OrderDetails;

import java.util.List;

public interface IOrderDetailService {
    List<OrderDetails> findViaOrderId(Integer orderID);
}
