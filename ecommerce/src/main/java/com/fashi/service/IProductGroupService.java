package com.fashi.service;

import java.util.List;

import com.fashi.model.ProductGroup;

public interface IProductGroupService {
	List<ProductGroup> findAll(Integer... level);
}
