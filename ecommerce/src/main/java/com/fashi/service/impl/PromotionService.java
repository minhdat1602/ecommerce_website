package com.fashi.service.impl;

import java.util.List;

import javax.inject.Inject;

import com.fashi.dao.IPromotionDAO;
import com.fashi.model.Promotion;
import com.fashi.service.IPromotionService;

public class PromotionService implements IPromotionService{
	@Inject
	private IPromotionDAO promotionDAO;
	
	@Override
	public List<Promotion> findAll() {
		return promotionDAO.findAll();
	}

	@Override
	public Promotion findOneById(Integer id) {
		return promotionDAO.findOneById(id);
	}
		
}
