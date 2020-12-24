package com.fashi.service.impl;

import java.util.List;

import javax.inject.Inject;

import com.fashi.dao.IProductBrandDAO;
import com.fashi.model.ProductBrand;
import com.fashi.service.IProductBrandService;

public class ProductBrandService implements IProductBrandService{
	@Inject
	private IProductBrandDAO productBrandDAO;
	
	@Override
	public List<ProductBrand> findAll() {
		return productBrandDAO.findAll();
	}
	
}
