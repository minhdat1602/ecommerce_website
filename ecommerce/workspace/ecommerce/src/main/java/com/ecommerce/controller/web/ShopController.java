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
import com.ecommerce.model.ProductBrand;
import com.ecommerce.model.ProductColor;
import com.ecommerce.model.ProductGroup;
import com.ecommerce.model.ProductSize;
import com.ecommerce.service.IProductBrandService;
import com.ecommerce.service.IProductColorService;
import com.ecommerce.service.IProductGroupService;
import com.ecommerce.service.IProductService;
import com.ecommerce.service.IProductSizeService;


@WebServlet(urlPatterns = "/shop")
public class ShopController extends HttpServlet{
	@Inject
	private IProductService productService;
	@Inject 
	private IProductGroupService productGroupService;
	@Inject 
	private IProductBrandService productGroupBrandService;
	@Inject
	private IProductColorService productColorService;
	@Inject
	private IProductSizeService productSizeService;
	
	private List<Product> listProduct;
	private List<ProductGroup> filterByCustomers;
	private List<ProductBrand> filterByBrands;
	private List<ProductColor> filterByColors;
	private List<ProductSize>  filterBySize;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		listProduct = productService.findAll();
		filterByCustomers = productGroupService.findAll(1);
		filterByBrands = productGroupBrandService.findAll();
		filterByColors = productColorService.findAll();
		filterBySize = productSizeService.findAll();
		req.setAttribute("listProduct", listProduct);
		req.setAttribute("filterByCustomers", filterByCustomers);
		req.setAttribute("filterByBrands", filterByBrands);
		req.setAttribute("filterByColors", filterByColors);
		req.setAttribute("filterBySize", filterBySize);
		req.getRequestDispatcher("/view/web/shop.jsp").forward(req, resp);
	}
	
	
	
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
	}
	
}
