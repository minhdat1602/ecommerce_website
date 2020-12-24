package com.fashi.service;

import java.util.List;

import com.fashi.model.Promotion;

public interface IPromotionService {
	List<Promotion> findAll();
	Promotion findOneById(Integer id);
}
