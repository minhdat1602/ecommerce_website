package com.ecommerce.controller.web;

import java.io.IOException;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ecommerce.model.Product;
import com.ecommerce.service.IProductService;

@WebServlet(urlPatterns = "/trang-chu")
public class HomeController extends HttpServlet {
	@Inject
	private IProductService productService;
	
	private List<Product> listProductForMen;
	private List<Product> listProductForWomen;
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		listProductForMen = productService.findAll("nam", "new", "hot");
		listProductForWomen = productService.findAll("nu", "new", "hot");
		req.setAttribute("listProductForMen", listProductForMen);
		req.setAttribute("listProductForWomen", listProductForWomen);
		req.getRequestDispatcher("/view/web/index.jsp").forward(req, resp);
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	}
}
