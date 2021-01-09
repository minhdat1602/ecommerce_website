package com.ecommerce.service.impl;

import java.awt.print.Pageable;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

import javax.inject.Inject;

import com.ecommerce.dao.IProductBrandDAO;
import com.ecommerce.dao.IProductDAO;
import com.ecommerce.dao.IStockDAO;
import com.ecommerce.model.Product;
import com.ecommerce.model.Stock;
import com.ecommerce.paging.Pagable;
import com.ecommerce.service.*;

public class ProductService implements IProductService{

	@Inject 
	private IProductDAO productDAO;
	@Inject
	private IStockService stockService;
	@Inject
	private IProductBrandService productBrandService;
	@Inject
	private ICollectionService collectionService;
	@Inject
	private IProductGroupService productGroupService;
	@Inject
	private IStockDAO stockDAO;

	@Override
	public List<Product> findAll(Pagable pagable) {
		List<Product> list = productDAO.findAll(pagable);
		for(Product p : list){
			p.setCollection(collectionService.findOneById(p.getCollectionId()));
			p.setProductBrand(productBrandService.findOneById(p.getBrandId()));
			p.setProductGroup(productGroupService.findOneById(p.getGroupId()));
			p.setStocks(stockDAO.findByProductId(p.getId()));
		}
		return list;
	}
	public Integer countAll(){
		return productDAO.countAll();
	}

	/*public Integer getQuantity(Product product){
		List<Stock> stocks = stockService.findByProductId(product.getId());
		Integer quantity = 0;
		for(Stock stock : stocks){
			quantity += stock.getQuantity();
		}
		return quantity;
	}
	public Integer getAllQuantity(List<Product> products){
		Integer quantity = 0;
		for(Product product : products){
			quantity += getQuantity(product);
		}
		return quantity;
	}*/

	@Override
	public List<Product> findAll(String productGroup, String... attr) {
		return productDAO.findAll(productGroup, attr);
	}

	@Override
	public Product findViaId(Integer id) {
		return productDAO.findViaId(id);
	}

	@Override
	public List<Product> findAllByPromotionId(Integer id) {
		return productDAO.findAllByPromotionId(id);
	}

	@Override
	public List<Product> findRelatedProduct(Integer groupId) {
		return productDAO.findRelatedProduct(groupId);
	}

	@Override
	public List<Product> findAllByCollectionId(Integer id) {
		return productDAO.findAllByCollectionId(id);
	}
	
	

}
