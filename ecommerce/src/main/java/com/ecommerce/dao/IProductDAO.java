package com.ecommerce.dao;

import java.awt.print.Pageable;
import java.util.List;

import com.ecommerce.model.Product;
import com.ecommerce.paging.Pagable;

public interface IProductDAO{
	List<Product> findAll(Pagable pagable);
	Product findViaId(Integer id);
	Integer countAll();

	List<Product> findAll(String productGroup, String...attr);
	List<Product> findAllByPromotionId(Integer id);
	List<Product> findRelatedProduct(Integer groupId);
	List<Product> findAllByCollectionId(Integer id);
}
