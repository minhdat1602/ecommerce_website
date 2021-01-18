package com.ecommerce.controller.web;

import java.io.IOException;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ecommerce.model.Images;
import com.ecommerce.model.Product;
import com.ecommerce.model.ProductBrand;
import com.ecommerce.model.ProductColor;
import com.ecommerce.model.ProductGroup;
import com.ecommerce.model.ProductSize;
import com.ecommerce.service.IImageService;
import com.ecommerce.service.IProductBrandService;
import com.ecommerce.service.IProductColorService;
import com.ecommerce.service.IProductGroupService;
import com.ecommerce.service.IProductService;
import com.ecommerce.service.IProductSizeService;

@WebServlet(urlPatterns = "/products")
public class ProductDetailsController extends HttpServlet{
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
	@Inject
	private IImageService imageService;
	
	private List<ProductGroup> filterByCustomers;
	private List<ProductBrand> filterByBrands;
	private List<ProductColor> filterByColors;
	private List<ProductSize>  filterBySize;
	private List<ProductGroup> filterByTags;
	private Product product;
	private List<Images> listImageDetails;
	private List<Product> listRelatedProduct;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//filterByCustomers = productGroupService.findAll(1);
		filterByBrands = productGroupBrandService.findAll();
		filterByColors = productColorService.findAll();
		filterBySize = productSizeService.findAll();
		//filterByTags = productGroupService.findAll(2,3);
		Integer id = Integer.parseInt(req.getParameter("id"));
		product = productService.findOne(id);
		//listImageDetails = imageService.findAllByProductId(id);
		//listRelatedProduct = productService.findRelatedProduct(product.getGroupId());
		//req.setAttribute("filterByCustomers", filterByCustomers);
		req.setAttribute("filterByBrands", filterByBrands);
		req.setAttribute("filterByColors", filterByColors);
		req.setAttribute("filterBySize", filterBySize);
		//req.setAttribute("filterByTags", filterByTags);
		req.setAttribute("product", product);
		//req.setAttribute("listImageDetails", listImageDetails);
		//req.setAttribute("listRelatedProduct", listRelatedProduct);
		req.getRequestDispatcher("/view/web/product-details.jsp").forward(req, resp);
	}
}
