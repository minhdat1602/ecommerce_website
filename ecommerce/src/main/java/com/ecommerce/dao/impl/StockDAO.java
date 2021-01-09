package com.ecommerce.dao.impl;

import com.ecommerce.dao.IStockDAO;
import com.ecommerce.mapper.StockMapper;
import com.ecommerce.model.Stock;

import java.util.List;

public class StockDAO extends AbstractDAO<Stock> implements IStockDAO {

    @Override
    public Stock findViaId(Integer id) {
        String sql = "Select * from stocks where id = ?";
        List<Stock> list = query(sql, new StockMapper(),id);
        return (list.size() == 0) ? null : list.get(0);
    }

    @Override
    public List<Stock> findByProductId(Integer productId) {
        String sql = "select * from stocks where product_id = ?";
        return query(sql, new StockMapper(), productId);
    }
}
