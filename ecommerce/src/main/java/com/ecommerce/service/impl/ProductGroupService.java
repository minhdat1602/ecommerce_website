package com.ecommerce.service.impl;

import java.util.List;

import javax.inject.Inject;

import com.ecommerce.dao.IProductGroupDAO;
import com.ecommerce.model.ProductGroup;
import com.ecommerce.service.IProductGroupService;

public class ProductGroupService implements IProductGroupService{
	@Inject
	private IProductGroupDAO productGroupDAO;
	
/*	@Override
	public List<ProductGroup> findAll(Integer... level) {
		return productGroupDAO.findAll(level);
	}*/

	@Override
	public List<ProductGroup> findAll() {
		return null;
	}

	@Override
	public List<ProductGroup> findLevelByParentId(Integer parentId, Integer level) {
		return null;
	}

	@Override
	public ProductGroup findOneById(Integer id) {
		ProductGroup p = productGroupDAO.findOneById(id);
		p.setParent(productGroupDAO.findOneById(p.getParentId()));
		return p;
	}

}
