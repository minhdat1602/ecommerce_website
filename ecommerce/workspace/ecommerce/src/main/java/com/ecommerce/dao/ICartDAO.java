package com.ecommerce.dao;

import com.ecommerce.model.Cart;

public interface ICartDAO extends IGenericDAO<Cart>{
    Cart findByCustomerId(Integer customerId);
}
