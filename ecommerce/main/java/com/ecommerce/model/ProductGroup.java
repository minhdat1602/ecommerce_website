package com.ecommerce.model;

public class ProductGroup extends AbstractModel{
	private String name;
	private String code;
	private Integer parentGroupId;
	private Integer level;
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
	public Integer getParentGroupId() {
		return parentGroupId;
	}
	public void setParentGroupId(Integer parentGroupId) {
		this.parentGroupId = parentGroupId;
	}
	public Integer getLevel() {
		return level;
	}
	public void setLevel(Integer level) {
		this.level = level;
	}
	
}
