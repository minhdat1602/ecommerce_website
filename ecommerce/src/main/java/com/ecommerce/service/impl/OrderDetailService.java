package com.ecommerce.service.impl;

import com.ecommerce.dao.IOrderDetailDAO;
import com.ecommerce.model.OrderDetails;
import com.ecommerce.service.IOrderDetailService;
import com.ecommerce.service.IStockService;

import javax.inject.Inject;
import java.util.List;

public class OrderDetailService implements IOrderDetailService
{
    @Inject
    private IOrderDetailDAO orderDetailDAO;
    @Inject
    private IStockService stockService;

    @Override
    public List<OrderDetails> findViaOrderId(Integer orderID) {
        List<OrderDetails> list = orderDetailDAO.findViaOrderId(orderID);
        for(OrderDetails o : list)
            o.setStock(stockService.findOneById(o.getStockId()));
        return list;
    }
}
