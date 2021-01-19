package com.ecommerce.service;

import com.ecommerce.dao.IGenericDAO;
import com.ecommerce.model.Stock;

public interface IStockService {
    Stock findOne(Integer id);

    Stock findOne(Integer sizeId, Integer colorId, Integer productId);
}
