package com.ecommerce.dao.impl;

import java.util.List;

import com.ecommerce.dao.IPromotionDAO;
import com.ecommerce.mapper.PromotionMapper;
import com.ecommerce.model.Promotion;

public class PromotionDAO extends AbstractDAO<Promotion> implements IPromotionDAO{

	@Override
	public List<Promotion> findAll() {
		String sql = "select * from promotions";
		return query(sql, new PromotionMapper());
	}

	@Override
	public Promotion findOneById(Integer id) {
		String sql = "select * from promotions where id = ?";
		return query(sql, new PromotionMapper(), id).get(0);
	}

}
