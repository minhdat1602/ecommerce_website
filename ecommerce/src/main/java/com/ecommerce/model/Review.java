package com.ecommerce.model;

import java.sql.Timestamp;

// Chưa có trong database
public class Review extends  AbstractModel{
    private Integer id;
    private Integer customerId;
    private Integer productId;
    private int vote;
    private String comment;
    private Timestamp dateReview;
    private Integer parentId;
}
