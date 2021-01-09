package com.ecommerce.mapper;

import com.ecommerce.model.Stock;

import java.sql.ResultSet;
import java.sql.SQLException;

public class StockMapper implements RowMapper<Stock>{

    @Override
    public Stock mapRow(ResultSet resultSet) {
        Stock stock = new Stock();

        try {
            stock.setId(resultSet.getInt("id"));
            stock.setProductId(resultSet.getInt("product_id"));
            stock.setSize(resultSet.getString("size"));
            stock.setColor(resultSet.getString("color"));
            stock.setQuantity(resultSet.getInt("quantity"));
        } catch (SQLException e) {
            System.out.println("error trong mapper StockMapper roi ban ey!");
            return null;
        }
        return stock;
    }
}
