package com.ecommerce.dao;

import com.ecommerce.model.Stock;

public interface IStockDAO extends IGenericDAO<Stock>{
     Stock findById(Integer id);
     Stock findOne(String size, String color, Integer productId);
}
