package com.ecommerce.model;

import java.util.List;

public class Cart extends AbstractModel {
    List<CartDetails> cartDetailsList;
    private Integer customerId;

    public Cart() {
    }

    public Integer getCustomerId() {
        return customerId;
    }

    public void setCustomerId(Integer customerId) {
        this.customerId = customerId;
    }

    public List<CartDetails> getCartDetailsList() {
        return cartDetailsList;
    }

    public void setCartDetailsList(List<CartDetails> cartDetailsList) {
        this.cartDetailsList = cartDetailsList;
    }

    public Integer totalPrice() {
        Integer total = 0;
        for (CartDetails cd : cartDetailsList) {
            total += cd.getQuantity() * cd.getStock().getProduct().getSellPrice();
        }
        return total;
    }
    public CartDetails getItem(Integer itemId){
        for (CartDetails cd : cartDetailsList) {
            if(cd.getId() == itemId)
                return cd;
        }
        return null;
    }

    public boolean removeItem(Integer itemId) {
        for (CartDetails cd : cartDetailsList) {
        	if(cd.getId() == itemId) {
                cartDetailsList.remove(cd);
                return true;
            }
        }
        return false;
    }
}
