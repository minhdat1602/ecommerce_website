package com.ecommerce.model;


//newProduct và hotProduct nên đổi kiểu boolean sau này dễ xử lý
public class Product extends AbstractModel{
	private String code;
	private String name;
	private Integer originPrice;
	private Integer sellPrice;
	private String groupProduct;
	private String brandProduct;
	private String collectionProduct;
	private String imageUrl;	// hình ảnh chính của sản phẩm.
	private String description;
	private Integer status;
	private Integer newProduct;	//tinyint(1) là boolean, trong database khong co boolean
	private Integer hotProduct;
	
	
	
	public Integer getNewProduct() {
		return newProduct;
	}
	public void setNewProduct(Integer newProduct) {
		this.newProduct = newProduct;
	}
	public Integer getHotProduct() {
		return hotProduct;
	}
	public void setHotProduct(Integer hotProduct) {
		this.hotProduct = hotProduct;
	}
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Integer getOriginPrice() {
		return originPrice;
	}
	public void setOriginPrice(Integer originPrice) {
		this.originPrice = originPrice;
	}
	public Integer getSellPrice() {
		return sellPrice;
	}
	public void setSellPrice(Integer sellPrice) {
		this.sellPrice = sellPrice;
	}
	
	public String getGroupProduct() {
		return groupProduct;
	}
	public void setGroupProduct(String groupProduct) {
		this.groupProduct = groupProduct;
	}
	public String getBrandProduct() {
		return brandProduct;
	}
	public void setBrandProduct(String brandProduct) {
		this.brandProduct = brandProduct;
	}
	public String getCollectionProduct() {
		return collectionProduct;
	}
	public void setCollectionProduct(String collectionProduct) {
		this.collectionProduct = collectionProduct;
	}
	public String getImageUrl() {
		return imageUrl;
	}
	public void setImageUrl(String imageUrl) {
		this.imageUrl = imageUrl;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public Integer getStatus() {
		return status;
	}
	public void setStatus(Integer status) {
		this.status = status;
	}

	
}
