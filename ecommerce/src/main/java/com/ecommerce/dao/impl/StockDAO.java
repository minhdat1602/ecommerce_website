package com.ecommerce.dao.impl;

import com.ecommerce.dao.IStockDAO;
import com.ecommerce.mapper.StockMapper;
import com.ecommerce.model.Stock;

import java.util.List;

public class StockDAO extends AbstractDAO<Stock> implements IStockDAO {
    @Override
    public Stock findById(Integer id) {
        String sql = "select * from stocks where id = ?";
        List<Stock> list = query(sql, new StockMapper(), id);
        return list.size() == 0 ? null : list.get(0);
    }

    @Override
    public Stock findOne(String size, String color, Integer productId) {
        String sql = "select * from stocks where size = ? and color = ? and product_id = ?";
        List<Stock> list = query(sql, new StockMapper(), size,color, productId);
        return list.size() == 0 ? null : list.get(0);
    }

}
