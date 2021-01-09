package com.ecommerce.service.impl;

import com.ecommerce.dao.IProductDAO;
import com.ecommerce.dao.IStockDAO;
import com.ecommerce.model.Product;
import com.ecommerce.model.Stock;
import com.ecommerce.service.IProductService;
import com.ecommerce.service.IStockService;

import javax.inject.Inject;
import java.util.List;
import java.util.Set;

public class StockService implements IStockService {

    @Inject
    private IStockDAO stockDAO;
    @Inject
    private IProductDAO productDAO;

    @Override
    public Stock findOneById(Integer id) {
        Stock stock = stockDAO.findViaId(id);

        Product product =productDAO.findViaId(stock.getProductId());
        stock.setProduct(product);

        return stock;
    }
    public List<Stock> findByProductId(Integer productId){
        return stockDAO.findByProductId(productId);
    }
   /* @Override
    public Integer getQuantityByProductId(Integer productId) {
        List<Stock> stocks = stockDAO.findByProductId(productId);
        Integer quantity = 0;
        for(int i = 0; i < stocks.size(); i++){
            quantity += stocks.get(i).getQuantity();
        }
        return quantity;
    }*/

}
