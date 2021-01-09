package com.ecommerce.mapper;

import com.ecommerce.model.Order;
import com.ecommerce.model.OrderDetails;

import java.sql.ResultSet;
import java.sql.SQLException;

public class OrderDetailMapper implements RowMapper<OrderDetails>{
    @Override
    public OrderDetails mapRow(ResultSet resultSet) {
        OrderDetails orderDetail = null;
        try{
            orderDetail = new OrderDetails();
            orderDetail.setId(resultSet.getInt("id"));
            orderDetail.setOrderId(resultSet.getInt("order_id"));
            orderDetail.setPrice(resultSet.getInt("price"));
            orderDetail.setDiscount(resultSet.getInt("discount"));
            orderDetail.setMoney(resultSet.getInt("money"));
            orderDetail.setQuantity(resultSet.getInt("quantity"));
            orderDetail.setStockId(resultSet.getInt("stock_id"));

        }catch(SQLException e){
            System.out.println("Có lỗi xảy ra trong mapper OrderDetail");
        }
        return orderDetail;
    }
}
