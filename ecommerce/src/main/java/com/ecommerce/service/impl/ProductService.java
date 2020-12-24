package com.ecommerce.service.impl;

import java.util.List;

import javax.inject.Inject;

import com.ecommerce.dao.IProductDAO;
import com.ecommerce.dao.impl.ProductDAO;
import com.ecommerce.model.Collection;
import com.ecommerce.model.Product;
import com.ecommerce.model.ProductGroup;
import com.ecommerce.service.IProductService;

public class ProductService implements IProductService{
	@Inject 
	private IProductDAO productDAO;
		
	@Override
	public List<Product> findAll() {
		return productDAO.findAll();
	}

	@Override
	public List<Product> findAll(String productGroup, String... attr) {
		return productDAO.findAll(productGroup, attr);
	}

	@Override
	public Product findOne(Integer id) {
		return productDAO.findOne(id);
	}

	@Override
	public List<Product> findAllByPromotionId(Integer id) {
		return productDAO.findAllByPromotionId(id);
	}

	@Override
	public List<Product> findRelatedProduct(Integer groupId) {
		return productDAO.findRelatedProduct(groupId);
	}

	@Override
	public List<Product> findAllByCollectionId(Integer id) {
		return productDAO.findAllByCollectionId(id);
	}
	
	

}
