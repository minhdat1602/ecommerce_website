package com.ecommerce.controller.admin;

import java.io.IOException;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ecommerce.model.Review;
import com.ecommerce.service.IReviewService;

@WebServlet(urlPatterns = "/admin/danh-sach-danh-gia")
public class ReviewController extends HttpServlet{
	
	@Inject
	private IReviewService reviewService;
	
	private List<Review> listReview;
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		listReview = reviewService.findAll();
		req.setAttribute("listReview", listReview);
		req.getRequestDispatcher("/view/admin/product/review/list-review-product.jsp").forward(req, resp);
	}
}
