package com.ecommerce.dao;

import java.util.List;

import com.ecommerce.model.Stock;

public interface IStockDAO extends IGenericDAO<Stock>{

     Stock findOne(Integer id);
    // Stock findOne(String size, String color, Integer productId);
    /* Stock findOne(Integer colorId, Integer sizeId);*/

	List<Stock> findAllByProductId(Integer id);
}
