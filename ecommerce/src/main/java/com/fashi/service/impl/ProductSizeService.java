package com.fashi.service.impl;

import java.util.List;

import javax.inject.Inject;

import com.fashi.dao.IProductSizeDAO;
import com.fashi.model.ProductSize;
import com.fashi.service.IProductSizeService;

public class ProductSizeService implements IProductSizeService{

	@Inject
	private IProductSizeDAO productSizeDAO;
	@Override
	public List<ProductSize> findAll() {
		return productSizeDAO.findAll();
	}
	
}
