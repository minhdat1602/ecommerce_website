package com.ecommerce.dao;

import java.util.List;

import com.ecommerce.model.ProductGroup;

public interface IProductGroupDAO extends IGenericDAO<ProductGroup>{
	List<ProductGroup> findAll();
	List<ProductGroup> findLevelByParentId(Integer parentId, Integer level);
	ProductGroup findOneById(Integer id);
}
