package com.ecommerce.dao.impl;

import com.ecommerce.dao.IOrderDAO;
import com.ecommerce.mapper.OrderMapper;
import com.ecommerce.model.Order;

import java.util.List;

public class OrderDAO extends AbstractDAO<Order> implements IOrderDAO {
    @Override
    public List<Order> findAll() {
        String sql = "select * from orders";
        return query(sql, new OrderMapper());
    }

    @Override
    public Order findViaId(Integer id) {
        String sql = "select * from orders where id = ?";
        List<Order> list = query(sql, new OrderMapper(), id);
        return (list.size() == 0) ? null : list.get(0);
    }

    @Override
    public Integer save(Order order) {
        String sql = "INSERT INTO orders(code,total_origin_price,total_sell_price," +
                "total_discount, total_money,notes,status,coupon_id,user_id,customer_id," +
                "created,createdBy) VALUES (?,?,?,?,?,?,?,?,?,?,?,?)";
        Integer id = insert(sql, order.getCode(), order.getTotalOriginPrice(),
                order.getTotalSellPrice(), order.getTotalDiscount(),order.getTotalMoney(),
                order.getNote(),order.getStatus(),order.getCouponId(),
                order.getCustomerId(),order.getCreated(),order.getCreatedBy());
        return id;
    }

    @Override
    public void update(Order order) {
        String sql = "update orders set status = ? where id = ?";
        System.out.println("status: "+ order.getStatus());
        update(sql, order.getStatus(), order.getId());
    }
}
