package com.ecommerce.dao;

import java.util.List;

import com.ecommerce.model.Promotion;

public interface IPromotionDAO extends IGenericDAO<Promotion>{
	List<Promotion> findAll();

	Promotion findOneById(Integer id);
}
