package com.ecommerce.service;

import com.ecommerce.model.Stock;

import java.util.List;

public interface IStockService {
    Stock findOneById(Integer id);
    List<Stock> findByProductId(Integer productId);
  /*  Integer getQuantityByProductId(Integer productId);*/
}
