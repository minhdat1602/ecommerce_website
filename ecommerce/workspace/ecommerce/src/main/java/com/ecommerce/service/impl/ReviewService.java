package com.ecommerce.service.impl;

import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.CountDownLatch;

import javax.inject.Inject;

import com.ecommerce.dao.IProductDAO;
import com.ecommerce.dao.IReviewDAO;
import com.ecommerce.model.Review;
import com.ecommerce.service.IReviewService;

public class ReviewService implements IReviewService{
	@Inject 
	private IProductDAO productDAO;
	@Inject
	private IReviewDAO reviewDAO;
	@Override
	public List<Review> findAll() {
		List<Integer> listProductId = reviewDAO.findAllProductId();
		List<Review> listReview = new ArrayList<Review>();
		for (Integer productId : listProductId) {
			Review review = new Review();
			review.setProduct(productDAO.findOne(productId));
			review.setId(productId);
			review.setTotalComment(reviewDAO.countByProductId(productId));
			review.setAverageStar(reviewDAO.avgStar(productId));
			listReview.add(review);
		}
		return listReview;
	}

	
}
