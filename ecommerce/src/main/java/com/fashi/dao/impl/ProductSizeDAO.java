package com.fashi.dao.impl;

import java.util.List;

import com.fashi.dao.IProductSizeDAO;
import com.fashi.mapper.ProductSizeMapper;
import com.fashi.model.ProductSize;

public class ProductSizeDAO extends AbstractDAO<ProductSize> implements IProductSizeDAO{

	@Override
	public List<ProductSize> findAll() {
		String sql = "select * from product_size";
		return query(sql, new ProductSizeMapper());
	}
	
}
