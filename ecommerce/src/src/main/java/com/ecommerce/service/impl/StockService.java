package com.ecommerce.service.impl;

import com.ecommerce.dao.IStockDAO;
import com.ecommerce.model.Stock;
import com.ecommerce.service.IStockService;

import javax.inject.Inject;

public class StockService implements IStockService {

    @Inject
    private IStockDAO stockDAO;

    @Override
    public Stock findOne(String size, String color, Integer productId) {
        return stockDAO.findOne(size, color, productId);
    }
}
