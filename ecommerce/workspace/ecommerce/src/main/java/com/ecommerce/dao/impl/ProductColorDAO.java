package com.ecommerce.dao.impl;

import java.util.List;

import com.ecommerce.dao.IProductColorDAO;
import com.ecommerce.mapper.ProductColorMapper;
import com.ecommerce.model.ProductColor;

public class ProductColorDAO extends AbstractDAO<ProductColor> implements IProductColorDAO{

	@Override
	public List<ProductColor> findAll() {
		String sql = "select * from product_color";
		return query(sql, new ProductColorMapper());
	}
	
}
