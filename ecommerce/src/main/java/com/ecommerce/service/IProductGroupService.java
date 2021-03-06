package com.ecommerce.service;

import java.util.List;

import com.ecommerce.model.Product;
import com.ecommerce.model.ProductGroup;

public interface IProductGroupService {
	List<ProductGroup> findAll(Integer... level);
	List<ProductGroup> findAll(Integer level, String segment);

	ProductGroup findOneById(Integer groupId);

	List<ProductGroup> findByParentId(Integer parentId);
}
