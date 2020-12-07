package com.ecommerce.model;


//newProduct và hotProduct nên đổi kiểu boolean sau này dễ xử lý
public class Product extends AbstractModel{
	private String code;
	private String name;
	private Integer originPrice;
	private Integer sellPrice;
	private Integer goupId;
	private Integer brandId;
	private Integer collectionId;
	private String imageUrl;	// hình ảnh chính của sản phẩm.
	private String description;
	private Integer status;
	private Boolean newProduct;	//tinyint(1) là boolean, trong database khong co boolean
	private Boolean hotProduct;
	
	
}
