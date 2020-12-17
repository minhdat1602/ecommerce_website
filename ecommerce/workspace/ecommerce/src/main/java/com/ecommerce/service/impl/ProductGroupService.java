package com.ecommerce.service.impl;

import java.util.List;

import javax.inject.Inject;

import com.ecommerce.dao.IProductGroupDAO;
import com.ecommerce.model.ProductGroup;
import com.ecommerce.service.IProductGroupService;
import com.ecommerce.service.IProductService;

public class ProductGroupService implements IProductGroupService{
	@Inject
	private IProductGroupDAO productGroupDAO;
	
	@Override
	public List<ProductGroup> findAll(int level) {
		return productGroupDAO.findAll(level);
	}
	
}
