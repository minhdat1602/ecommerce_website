package com.ecommerce.service.impl;

import java.util.List;

import javax.inject.Inject;

import com.ecommerce.dao.IPromotionDAO;
import com.ecommerce.model.Promotion;
import com.ecommerce.service.IPromotionService;

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
