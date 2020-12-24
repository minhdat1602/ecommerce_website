package com.fashi.dao;

import java.util.List;

import com.fashi.model.Promotion;

public interface IPromotionDAO extends IGenericDAO<Promotion>{
	List<Promotion> findAll();

	Promotion findOneById(Integer id);
}
