package com.ecommerce.service;

import java.util.List;

import com.ecommerce.model.Product;
import com.ecommerce.model.Stock;

public interface IStockService {
	 Stock findOne(Integer id);
	 Stock findOne(Integer sizeId, Integer colorId, Integer productId);
		void setIventory(List<Product> listProduct);
}
