package com.ecommerce.mapper;

import com.ecommerce.model.Order;

import java.sql.ResultSet;
import java.sql.SQLException;

public class OrderMapper implements RowMapper<Order>{

    @Override
    public Order mapRow(ResultSet resultSet) {
        Order order = null;
        try{
            order = new Order();

            order.setId(resultSet.getInt("id"));
            order.setCode(resultSet.getString("code"));
            order.setTotalOriginPrice(resultSet.getInt("total_origin_price"));
            order.setTotalSellPrice(resultSet.getInt("total_sell_price"));
            order.setTotalDiscount(resultSet.getInt("total_discount"));
            order.setTotalMoney(resultSet.getInt("total_money"));
            order.setNote(resultSet.getString("notes"));
            order.setStatus(resultSet.getInt("status"));
            order.setCouponId(resultSet.getInt("coupon_id"));
            order.setCustomerId(resultSet.getInt("customer_id"));
            order.setCreated(resultSet.getTimestamp("created"));
        }catch(SQLException e){
            System.out.println("Có lỗi xảy ra trong mapper");
        }
        return order;
    }
}
