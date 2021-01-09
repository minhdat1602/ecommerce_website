package com.ecommerce.model;

public class Stock extends AbstractModel{
	private Integer productId;
	private String size;
	private String color;
	private Integer quantity;
	private Product product;
	public Stock() {
	}

	public Integer getProductId() {
		return productId;
	}

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	public void setProductId(Integer productId) {
		this.productId = productId;
	}

	public String getSize() {
		return size;
	}

	public void setSize(String size) {
		this.size = size;
	}

	public String getColor() {
		return color;
	}

	public void setColor(String color) {
		this.color = color;
	}

	public Integer getQuantity() {
		return quantity;
	}

	public void setQuantity(Integer quantity) {
		this.quantity = quantity;
	}
}
