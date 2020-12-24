package com.fashi.dao.impl;

import java.util.List;

import com.fashi.dao.IPromotionDAO;
import com.fashi.mapper.PromotionMapper;
import com.fashi.model.Promotion;

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
