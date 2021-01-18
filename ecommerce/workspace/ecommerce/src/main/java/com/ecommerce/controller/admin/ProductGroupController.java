package com.ecommerce.controller.admin;

import java.io.IOException;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ecommerce.model.ProductGroup;
import com.ecommerce.service.IProductGroupService;

@WebServlet(urlPatterns = "/admin/danh-sach-nhom-san-pham")
public class ProductGroupController extends HttpServlet{
	@Inject
	private IProductGroupService productGroupService;
	
	private List<ProductGroup> listProductGroup;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		listProductGroup = productGroupService.findAll(1,2,3);
		req.setAttribute("listProductGroup", listProductGroup);
		req.getRequestDispatcher("/view/admin/product/list-product-group.jsp").forward(req, resp);
	}
}
