package com.fashi.service.impl;

import java.util.List;

import javax.inject.Inject;

import com.fashi.dao.IProductDAO;
import com.fashi.model.Product;
import com.fashi.service.IProductService;

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
