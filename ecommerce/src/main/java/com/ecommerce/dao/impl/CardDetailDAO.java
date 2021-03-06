package com.ecommerce.dao.impl;

import com.ecommerce.dao.ICartDetailDAO;
import com.ecommerce.mapper.CartDetailMapper;
import com.ecommerce.model.CartDetails;

import java.util.List;

public class CardDetailDAO extends AbstractDAO<CartDetails> implements ICartDetailDAO {
    @Override
    public List<CartDetails> findByCardId(Integer cartId) {
        String sql = "select * from carts_detail where cart_id = ?";
        return query(sql, new CartDetailMapper(), cartId);
    }

    @Override
    public Integer insert(CartDetails cartDetails) {
        String sql = ("insert into carts_detail (cart_id,stock_id,quantity) values (?,?,?)");
        return insert(sql, cartDetails.getCartId(), cartDetails.getStockId(), cartDetails.getQuantity());
    }

    @Override
    public boolean update(CartDetails cartDetails) {
        StringBuilder sql = new StringBuilder();
        sql.append("update carts_detail set");
        sql.append(" cart_id = ?,");
        sql.append(" stock_id = ?,");
        sql.append(" quantity = ?");
        sql.append(" where id = ?");
        return update(sql.toString(), cartDetails.getCartId(), cartDetails.getStockId(),
                cartDetails.getQuantity(),
                cartDetails.getId());
    }

    @Override
    public boolean delete(Integer detailCartId) {
        String sql = "delete from carts_detail where id = ?";
        return delete(sql, detailCartId);
    }

    @Override
    public CartDetails findById(Integer id) {
        String sql = "select * from carts_detail where id = ?";
        List<CartDetails> list = query(sql, new CartDetailMapper(), id);
        return list.size() == 0 ? null : list.get(0);
    }
}
