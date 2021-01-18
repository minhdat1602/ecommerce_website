package com.ecommerce.model;

import java.sql.Timestamp;

// giảm giá sản phẩm đơn giản -> giá trị cụ thể, giảm giá nâng cao -> project xong -> improve
public class Promotion extends AbstractModel{
	private String code;
	private String name;
	private String descriptions;
	private String header;
	private String imageUrl;
	private Integer value;
	private Timestamp dateBegin;
	private Timestamp dateEnd;
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
	public Integer getValue() {
		return value;
	}
	public void setValue(Integer value) {
		this.value = value;
	}
	public Timestamp getDateBegin() {
		return dateBegin;
	}
	public void setDateBegin(Timestamp dateBegin) {
		this.dateBegin = dateBegin;
	}
	public Timestamp getDateEnd() {
		return dateEnd;
	}
	public void setDateEnd(Timestamp dateEnd) {
		this.dateEnd = dateEnd;
	}
	public String getImageUrl() {
		return imageUrl;
	}
	public void setImageUrl(String imageUrl) {
		this.imageUrl = imageUrl;
	}
	public String getDescriptions() {
		return descriptions;
	}
	public void setDescriptions(String descriptions) {
		this.descriptions = descriptions;
	}
	public String getHeader() {
		return header;
	}
	public void setHeader(String header) {
		this.header = header;
	}
	
}
