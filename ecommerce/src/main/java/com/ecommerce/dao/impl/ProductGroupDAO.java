package com.ecommerce.dao.impl;

import java.util.List;

import com.ecommerce.dao.IProductGroupDAO;
import com.ecommerce.mapper.ProductGroupMapper;
import com.ecommerce.model.ProductGroup;

public class ProductGroupDAO extends AbstractDAO<ProductGroup> implements IProductGroupDAO{

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

	@Override
	public List<ProductGroup> findAll() {
		return null;
	}

	@Override
	public List<ProductGroup> findLevelByParentId(Integer parentId, Integer level) {
		return null;
	}

	@Override
	public ProductGroup findOneById(Integer id) {
		String sql = "select * from products_group where id = ?";
		List<ProductGroup> list = query(sql, new ProductGroupMapper(), id);
		return list.size() == 0 ? null : list.get(0);
	}
}
