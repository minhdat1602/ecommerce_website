package com.ecommerce.dao.impl;

import com.ecommerce.dao.IStockDAO;
import com.ecommerce.mapper.StockMapper;
import com.ecommerce.model.Stock;

import java.util.List;

public class StockDAO extends AbstractDAO<Stock> implements IStockDAO {
    
    @Override
    public Stock findOne(Integer id) {
        String sql = "select * from stocks where id = ?";
        List<Stock> list = query(sql, new StockMapper(), id);
        return list.size() == 0 ? null : list.get(0);
    }

	@Override
	public List<Stock> findAllByProductId(Integer id) {
		 String sql = "select * from stocks where product_id = ?";
	     return  query(sql, new StockMapper(), id);
	}

	 @Override
	    public Stock findOne(Integer sizeId, Integer colorId, Integer productId) {
	        String sql = "select * from stocks where size_id = ? and color_id = ? and product_id = ?";
	        List<Stock> list = query(sql, new StockMapper(), sizeId, colorId, productId);
	        return list.size() == 0 ? null : list.get(0);
	    }

}
