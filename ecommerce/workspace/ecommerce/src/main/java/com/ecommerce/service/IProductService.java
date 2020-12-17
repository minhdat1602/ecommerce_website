package com.ecommerce.service;

import java.util.List;

import com.ecommerce.model.Product;
import com.ecommerce.model.ProductGroup;

public interface IProductService {
	List<Product> findAll();
	List<Product> findAll(String productGroup, String...attr);
}
