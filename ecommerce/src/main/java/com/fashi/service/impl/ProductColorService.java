package com.fashi.service.impl;

import java.util.List;

import javax.inject.Inject;

import com.fashi.dao.IProductColorDAO;
import com.fashi.model.ProductColor;
import com.fashi.service.IProductColorService;

public class ProductColorService implements IProductColorService{
	@Inject
	private IProductColorDAO productColorDAO;
	
	@Override
	public List<ProductColor> findAll() {
		return productColorDAO.findAll();
	}
	
}
