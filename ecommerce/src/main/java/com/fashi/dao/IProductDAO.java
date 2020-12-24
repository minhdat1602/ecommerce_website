package com.fashi.dao;

import java.util.List;

import com.fashi.model.Product;

public interface IProductDAO extends IGenericDAO<Product>{
	List<Product> findAll();
	List<Product> findAll(String productGroup, String...attr);
	Product findOne(Integer id);
	List<Product> findAllByPromotionId(Integer id);
	List<Product> findRelatedProduct(Integer groupId);
	List<Product> findAllByCollectionId(Integer id);
}
