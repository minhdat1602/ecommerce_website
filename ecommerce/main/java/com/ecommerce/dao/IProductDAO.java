package com.ecommerce.dao;

import java.util.List;

import com.ecommerce.model.Collection;
import com.ecommerce.model.Product;
import com.ecommerce.model.ProductGroup;

public interface IProductDAO extends IGenericDAO<Product>{
	List<Product> findAll();
	List<Product> findAll(String productGroup, String...attr);
	Product findOne(Integer id);
	List<Product> findAllByPromotionId(Integer id);
	List<Product> findRelatedProduct(Integer groupId);
	List<Product> findAllByCollectionId(Integer id);
}