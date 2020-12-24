package com.fashi.dao.impl;

import java.util.List;

import com.fashi.dao.IProductGroupDAO;
import com.fashi.mapper.ProductGroupMapper;
import com.fashi.model.ProductGroup;

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
