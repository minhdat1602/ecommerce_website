package com.ecommerce.service;

import java.util.List;

import com.ecommerce.model.Collection;
import com.ecommerce.model.Product;
import com.ecommerce.model.ProductGroup;

public interface IProductService {
	List<Product> findAll(Integer groupId);
	List<Product> findAll();
	List<Product> findAll(String productGroup, String...attr);
	Product findOne(Integer id);
	List<Product> findAllByPromotionId(Integer id);
	List<Product> findRelatedProduct(Integer groupId);
	List<Product> findAllByCollectionId(Integer id);
	Integer getTotalProduct();
	List<Product> findAll(Product pageable);
	void delete(int[] ids);
	Integer save(Product product);
	boolean update(Product product);
	boolean importProduct(Product product);
}
