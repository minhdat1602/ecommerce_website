package com.ecommerce.service;

import java.util.List;

import com.ecommerce.model.ProductBrand;

public interface IProductBrandService {
	List<ProductBrand> findAll();
	ProductBrand findOneById(Integer id);
}
