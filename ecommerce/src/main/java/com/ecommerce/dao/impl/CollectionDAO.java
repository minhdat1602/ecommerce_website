package com.ecommerce.dao.impl;

import java.util.List;

import com.ecommerce.dao.ICollectionDAO;
import com.ecommerce.mapper.CollectionMapper;
import com.ecommerce.model.Collection;

public class CollectionDAO extends AbstractDAO<Collection> implements ICollectionDAO{

	@Override
	public List<Collection> findAll() {
		String sql = "select * from products_collection";
		return query(sql, new CollectionMapper());
	}

	@Override
	public Collection findOneById(Integer id) {
		String sql = "select * from products_collection where id = ?";
		List<Collection> list = query(sql, new CollectionMapper(), id);
		return list.size() == 0 ? null : list.get(0);
	}
		
}
