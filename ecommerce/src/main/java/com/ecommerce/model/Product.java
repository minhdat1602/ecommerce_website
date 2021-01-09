package com.ecommerce.model;


import java.util.List;
import java.util.Set;

public class Product extends AbstractModel{
	private String code;
	private String name;
	private Integer originPrice;
	private Integer sellPrice;
	private Integer groupId;
	private Integer brandId;
	private Integer collectionId;
	private String imageUrl;
	private String description;
	private Integer status;
	private Integer newProduct;
	private Integer hotProduct;

	private ProductGroup productGroup;
	private ProductBrand productBrand;
	private Collection collection;

	private List<Stock> stocks;

	public Product() {
	}

	public String getCode() {
		return code;
	}

	public List<Stock> getStocks() {
		return stocks;
	}

	public void setStocks(List<Stock> stocks) {
		this.stocks = stocks;
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

	public Integer getGroupId() {
		return groupId;
	}

	public void setGroupId(Integer groupId) {
		this.groupId = groupId;
	}

	public Integer getBrandId() {
		return brandId;
	}

	public void setBrandId(Integer brandId) {
		this.brandId = brandId;
	}

	public Integer getCollectionId() {
		return collectionId;
	}

	public void setCollectionId(Integer collectionId) {
		this.collectionId = collectionId;
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

	public ProductGroup getProductGroup() {
		return productGroup;
	}

	public void setProductGroup(ProductGroup productGroup) {
		this.productGroup = productGroup;
	}

	public ProductBrand getProductBrand() {
		return productBrand;
	}

	public void setProductBrand(ProductBrand productBrand) {
		this.productBrand = productBrand;
	}

	public Collection getCollection() {
		return collection;
	}

	public void setCollection(Collection collection) {
		this.collection = collection;
	}

	public Integer getTotalQuantity(){
		Integer quantity = 0;
		for (Stock stock : stocks){
			quantity += stock.getQuantity();
		}
		return quantity;
	}
}
