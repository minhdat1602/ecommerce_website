package com.ecommerce.service;

import com.ecommerce.dao.IGenericDAO;
import com.ecommerce.model.Stock;

public interface IStockService {
    Stock findOne(Integer id);
   // Stock findOne(String size, String color, Integer productId);
}
