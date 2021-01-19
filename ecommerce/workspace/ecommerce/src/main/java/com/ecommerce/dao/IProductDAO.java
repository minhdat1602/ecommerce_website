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
	Integer getTotalProduct();
	List<Product> findAll(Product pageable);
	void delete(int id);
	Integer save(Product product);
	boolean update(Product product);
	
	//dat
		List<Product> findAll(String segment, String group, Integer isHot, Integer isNew);
		List<Product> findByGroupId(Integer groupId);
		
		//15h50 19/1
		boolean importProduct(Product product);
}
