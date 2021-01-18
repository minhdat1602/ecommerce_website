package com.ecommerce.dao.impl;

import java.util.List;

import com.ecommerce.dao.IProductSizeDAO;
import com.ecommerce.mapper.ProductSizeMapper;
import com.ecommerce.model.ProductSize;
import com.ecommerce.service.IProductSizeService;

public class ProductSizeDAO extends AbstractDAO<ProductSize> implements IProductSizeDAO{

	@Override
	public List<ProductSize> findAll() {
		String sql = "select * from product_size";
		return query(sql, new ProductSizeMapper());
	}
	
}
