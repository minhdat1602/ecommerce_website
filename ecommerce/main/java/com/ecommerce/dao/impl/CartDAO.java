package com.ecommerce.dao.impl;

import com.ecommerce.dao.ICartDAO;
import com.ecommerce.mapper.CartMapper;
import com.ecommerce.model.Cart;

import java.util.List;

public class CartDAO extends AbstractDAO<Cart> implements ICartDAO {
    @Override
    public Cart findByCustomerId(Integer customerId) {
        String sql = "select * from carts where customer_id = ?";
        List<Cart> list = query(sql, new CartMapper(), customerId);
        return list.size() == 0 ? null : list.get(0);
    }
}
