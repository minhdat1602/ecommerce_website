package com.ecommerce.dao.impl;

import java.util.List;

import com.ecommerce.dao.IProductGroupDAO;
import com.ecommerce.mapper.ProductGroupMapper;
import com.ecommerce.mapper.ProductMapper;
import com.ecommerce.model.ProductGroup;

public class ProductGroupDAO extends AbstractDAO<ProductGroup> implements IProductGroupDAO{

	@Override
	public List<ProductGroup> findAll(Integer... level) {
		StringBuilder sql = new StringBuilder("SELECT distinct name, id, code FROM products_group where ");
									for (int i = 0; i < level.length; i++) {
										if (i != level.length-1) {
											sql.append("level = ? or ");
										} else sql.append("level = ? ");
									}
									sql.append("GROUP BY name");
		return query(sql.toString(), new ProductGroupMapper(), level);
	}	
}
