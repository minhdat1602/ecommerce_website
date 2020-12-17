package com.ecommerce.dao.impl;

import java.util.List;

import com.ecommerce.dao.IProductGroupDAO;
import com.ecommerce.mapper.ProductGroupMapper;
import com.ecommerce.mapper.ProductMapper;
import com.ecommerce.model.ProductGroup;

public class ProductGroupDAO extends AbstractDAO<ProductGroup> implements IProductGroupDAO{

	@Override
	public List<ProductGroup> findAll(int level) {
		String sql = "SELECT id,name,code FROM products_group where level = ?";
		return query(sql, new ProductGroupMapper(), level);
	}

	
	
}
