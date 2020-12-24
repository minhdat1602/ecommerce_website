package com.fashi.dao.impl;

import java.util.List;

import com.fashi.dao.IProductColorDAO;
import com.fashi.mapper.ProductColorMapper;
import com.fashi.model.ProductColor;

public class ProductColorDAO extends AbstractDAO<ProductColor> implements IProductColorDAO{

	@Override
	public List<ProductColor> findAll() {
		String sql = "select * from product_color";
		return query(sql, new ProductColorMapper());
	}
	
}
