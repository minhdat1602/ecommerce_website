package com.ecommerce.controller.admin;

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
import com.ecommerce.model.ProductGroup;
import com.ecommerce.model.Stock;
import com.ecommerce.service.IProductBrandService;
import com.ecommerce.service.IProductGroupService;
import com.ecommerce.service.IProductService;
import com.ecommerce.service.IStockService;
import com.ecommerce.utils.FormUtil;
import com.ecommerce.utils.HTTPUtil;
import com.fasterxml.jackson.databind.ObjectMapper;

@WebServlet(urlPatterns = "/admin/danh-sach-san-pham")
public class ProductController extends HttpServlet {
	@Inject
	private IProductService productService;
	@Inject
	private IProductBrandService brandService;
	@Inject
	private IProductGroupService groupService;
	@Inject
	private IStockService stockService;
	
	private List<Stock> listStock;
	private List<ProductBrand> listProductBrand;
	private List<Product> listProduct;
	private List<ProductGroup> listProductGroup;
	private Product product;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String type = req.getParameter("type");
		Product pageable = FormUtil.toModel(Product.class, req);
		if (!type.equalsIgnoreCase("list")) {
			listProductBrand = brandService.findAll();
			listProductGroup = groupService.findAll(3);
			req.setAttribute("listProductBrand", listProductBrand);
			req.setAttribute("listProductGroup", listProductGroup);
			if (type.equalsIgnoreCase("edit")) {
				String idStr = req.getParameter("id");
				Integer id = Integer.parseInt(idStr);
				product = productService.findOne(id);
				req.setAttribute("product", product);
				req.getRequestDispatcher("/view/admin/product/add-product.jsp").forward(req, resp);
			} else if (type.equalsIgnoreCase("add")) {	
				req.getRequestDispatcher("/view/admin/product/add-product.jsp").forward(req, resp);
			} else if (type.equalsIgnoreCase("import")) {
				ObjectMapper mapper = new ObjectMapper();
				req.setCharacterEncoding("UTF-8");
				resp.setContentType("application/json");
				Product product = HTTPUtil.of(req.getReader()).toModel(Product.class);
				boolean success = productService.importProduct(product);
				req.setAttribute("product", product);
				req.getRequestDispatcher("/view/admin/product/add-product.jsp").forward(req, resp);
			}
		} else {
			pageable.setTotalItem(productService.getTotalProduct());
			pageable.setTotalPage((int) Math.ceil( (double) (pageable.getTotalItem() *10 /pageable.getMaxPageItem()) /10 ));
			pageable.setOffset((pageable.getPage()-1) * pageable.getMaxPageItem());
			listProduct = productService.findAll(pageable);
			stockService.setIventory(listProduct);
			req.setAttribute("pageable", pageable);
			req.setAttribute("listProduct", listProduct);
			req.getRequestDispatcher("/view/admin/product/list-product.jsp").forward(req, resp);
		}
	}
}
