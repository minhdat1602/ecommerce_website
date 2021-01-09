package com.ecommerce.service;

import java.awt.print.Pageable;
import java.util.List;

import com.ecommerce.model.Product;
import com.ecommerce.paging.Pagable;

public interface IProductService {
	List<Product> findAll(Pagable pagable);

	List<Product> findAll(String productGroup, String...attr);
	/*Integer getAllQuantity(List<Product> products);*/
	Product findViaId(Integer id);
	Integer countAll();

	List<Product> findAllByPromotionId(Integer id);
	List<Product> findRelatedProduct(Integer groupId);
	List<Product> findAllByCollectionId(Integer id);
}
