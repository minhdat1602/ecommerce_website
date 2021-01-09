package com.ecommerce.controller.admin;

import java.awt.print.Pageable;
import java.io.IOException;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ecommerce.model.Product;
import com.ecommerce.paging.Pagable;
import com.ecommerce.paging.PageReq;
import com.ecommerce.service.IProductService;

@WebServlet(urlPatterns = "/admin/sanpham")
public class ProductController extends HttpServlet{
	@Inject
	private IProductService productService;
	
	private List<Product> listProduct;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String sorting = req.getParameter("sorting");
		System.out.println("sorting: " + sorting);
		Integer page;
		page = req.getParameter("page") == null ? 1 : Integer.parseInt(req.getParameter("page"));
		System.out.println("page:" + page);
		Integer limit = 5;

		String sortBy = req.getParameter("sortBy");
		System.out.println("SortBy: " + sortBy);
		String sortName = req.getParameter("sortName");
		System.out.println("SortName: " + sortName);

		Pagable pagable = new PageReq(page,limit, sortBy, sortName);
		Integer count = productService.countAll();
		Integer totalPage = count % limit == 0 ? count / limit: count / limit + 1;
		listProduct = productService.findAll(pagable);

		System.out.println("total: " + totalPage);

		req.setAttribute("page", page);
		req.setAttribute("limit", limit);
		req.setAttribute("totalPage", totalPage);
		req.setAttribute("sortBy", sortBy);
		req.setAttribute("sortName", sortName);
		req.setAttribute("listProduct", listProduct);

		req.getRequestDispatcher("/view/admin/product/list-product.jsp").forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}
}
