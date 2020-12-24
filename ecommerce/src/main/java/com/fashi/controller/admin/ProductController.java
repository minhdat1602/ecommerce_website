package com.fashi.controller.admin;

import java.io.IOException;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fashi.model.Product;
import com.fashi.service.IProductService;

@WebServlet(urlPatterns = "/admin/danh-sach-san-pham")
public class ProductController extends HttpServlet{
	@Inject
	private IProductService productService;
	
	private List<Product> listProduct;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		listProduct = productService.findAll();
		req.setAttribute("listProduct", listProduct);
		
		req.getRequestDispatcher("/view/admin/product/list-product.jsp").forward(req, resp);
		
	}
}
