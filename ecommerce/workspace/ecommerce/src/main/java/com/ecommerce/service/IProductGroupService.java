package com.ecommerce.service;

import java.util.List;

import com.ecommerce.model.ProductGroup;

public interface IProductGroupService {
	List<ProductGroup> findAll(int level);
}
