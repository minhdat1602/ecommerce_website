package com.ecommerce.dao;

import com.ecommerce.model.Stock;

import java.util.List;

public interface IStockDAO {
    Stock findViaId(Integer id);
    List<Stock> findByProductId(Integer productId);
}
