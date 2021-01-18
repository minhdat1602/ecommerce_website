package com.ecommerce.dao.impl;

import java.util.List;

import com.ecommerce.dao.IFeedbackDAO;
import com.ecommerce.mapper.FeedbackMapper;
import com.ecommerce.model.Feedback;

public class FeedbackDAO extends AbstractDAO<Feedback> implements IFeedbackDAO{

	@Override
	public List<Feedback> findAll() {
		String sql = "select * from feedbacks";
		return query(sql, new FeedbackMapper());
	}

}
