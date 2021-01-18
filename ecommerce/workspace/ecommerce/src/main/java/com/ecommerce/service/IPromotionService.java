package com.ecommerce.service;

import java.util.List;

import com.ecommerce.model.Promotion;

public interface IPromotionService {
	List<Promotion> findAll();
	Promotion findOneById(Integer id);
}
