package com.fashi.service.impl;

import java.util.List;

import javax.inject.Inject;

import com.fashi.dao.IProductGroupDAO;
import com.fashi.model.ProductGroup;
import com.fashi.service.IProductGroupService;

public class ProductGroupService implements IProductGroupService{
	@Inject
	private IProductGroupDAO productGroupDAO;
	
	@Override
	public List<ProductGroup> findAll(Integer... level) {
		return productGroupDAO.findAll(level);
	}
	
}
