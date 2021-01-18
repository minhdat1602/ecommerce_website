package com.ecommerce.controller.admin;

import java.io.IOException;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ecommerce.model.Promotion;
import com.ecommerce.service.IPromotionService;

@WebServlet(urlPatterns = "/admin/danh-sach-khuyen-mai")
public class PromotionController extends HttpServlet{
	@Inject
	private IPromotionService promotionService;
	
	private List<Promotion> listPromotion;
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		listPromotion = promotionService.findAll();
		req.setAttribute("listPromotion", listPromotion);
		req.getRequestDispatcher("/view/admin/sale/list-promotions.jsp").forward(req, resp);
	}
}
