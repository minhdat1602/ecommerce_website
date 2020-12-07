package com.ecommerce.model;

import java.sql.Timestamp;

// giảm giá sản phẩm đơn giản -> giá trị cụ thể, giảm giá nâng cao -> project xong -> improve
public class Promotion extends AbstractModel{
	private String code;
	private String name;
	private Integer value;
	private Timestamp dateBegin;
	private Timestamp dateEnd;
	
}
