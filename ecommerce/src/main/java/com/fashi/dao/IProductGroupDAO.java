package com.fashi.dao;

import java.util.List;

import com.fashi.model.ProductGroup;

public interface IProductGroupDAO extends IGenericDAO<ProductGroup>{
	List<ProductGroup> findAll(Integer... level);
}
