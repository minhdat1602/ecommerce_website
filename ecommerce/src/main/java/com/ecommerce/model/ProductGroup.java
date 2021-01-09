package com.ecommerce.model;

public class ProductGroup extends AbstractModel{
	private String name;
	private String code;
	private Integer parentId;
	private Integer level;
	private ProductGroup parent;

	public ProductGroup() {
	}

	public ProductGroup getParent() {
		return parent;
	}

	public void setParent(ProductGroup parent) {
		this.parent = parent;
	}

	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public Integer getParentId() {
		return parentId;
	}
	public void setParentId(Integer parentId) {
		this.parentId = parentId;
	}
	public Integer getLevel() {
		return level;
	}
	public void setLevel(Integer level) {
		this.level = level;
	}
	
}
