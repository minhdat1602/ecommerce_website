package com.ecommerce.dao;

import java.util.List;

import com.ecommerce.model.Review;

public interface IReviewDAO extends IGenericDAO<Review>{
	List<Review> findAll();

	List<Integer> findAllProductId();

	Integer countByProductId(Integer productId);

	Double avgStar(Integer productId);
}
