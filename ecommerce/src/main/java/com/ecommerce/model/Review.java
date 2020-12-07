package com.ecommerce.model;

// Chưa có trong database
public class Review extends  AbstractModel{
    private Integer id;
    private Integer customer_id;
    private Integer product_id;
    private int vote;
    private String comment;
    private Timestamp date_review;
    private Integer parent_id;
}
