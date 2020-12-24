package com.fashi.dao;

import java.util.List;

import com.fashi.model.ProductBrand;

public interface IProductBrandDAO extends IGenericDAO<ProductBrand>{
	List<ProductBrand> findAll();
}
