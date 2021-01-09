package com.ecommerce.dao.impl;

import java.util.List;

import com.ecommerce.dao.IProductBrandDAO;
import com.ecommerce.mapper.ProductBrandMapper;
import com.ecommerce.model.ProductBrand;

public class ProductBrandDAO extends AbstractDAO<ProductBrand> implements IProductBrandDAO{

	@Override
	public List<ProductBrand> findAll() {
		String sql = "SELECT * FROM products_brand";
		return query(sql, new ProductBrandMapper());
	}

	@Override
	public ProductBrand findOneById(Integer id) {
		String sql = "select * from products_brand where id = ?";
		List<ProductBrand> list = query(sql, new ProductBrandMapper(), id);
		return list.size() == 0 ? null : list.get(0);
	}

}
