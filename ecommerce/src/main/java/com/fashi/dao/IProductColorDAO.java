package com.fashi.dao;

import java.util.List;

import com.fashi.model.ProductColor;

public interface IProductColorDAO extends IGenericDAO<ProductColor>{
	List<ProductColor> findAll();
}
