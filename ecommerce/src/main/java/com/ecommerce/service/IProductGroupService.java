package com.ecommerce.service;

import java.util.List;

import com.ecommerce.model.Product;
import com.ecommerce.model.ProductGroup;

public interface IProductGroupService {
	List<ProductGroup> findAll();
	List<ProductGroup> findLevelByParentId(Integer parentId, Integer level);
	ProductGroup findOneById(Integer id);
}
