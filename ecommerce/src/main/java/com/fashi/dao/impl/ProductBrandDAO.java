package com.fashi.dao.impl;

import java.util.List;

import com.fashi.dao.IProductBrandDAO;
import com.fashi.mapper.ProductBrandMapper;
import com.fashi.model.ProductBrand;

public class ProductBrandDAO extends AbstractDAO<ProductBrand> implements IProductBrandDAO{

	@Override
	public List<ProductBrand> findAll() {
		String sql = "SELECT * FROM products_brand";
		return query(sql, new ProductBrandMapper());
	}
	
}
