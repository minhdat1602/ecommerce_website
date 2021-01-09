package com.ecommerce.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.ecommerce.model.ProductGroup;

public class ProductGroupMapper implements RowMapper<ProductGroup>{

	@Override
	public ProductGroup mapRow(ResultSet resultSet) {
		ProductGroup productGroup = new ProductGroup();
		try {
			productGroup.setId(resultSet.getInt("id"));
			productGroup.setName(resultSet.getString("name"));
			productGroup.setCode(resultSet.getString("code"));
			productGroup.setLevel(resultSet.getInt("level"));
			productGroup.setParentId(resultSet.getInt("parent_id"));
		} catch (SQLException e) {
			System.out.println("CO GI DO SAI SAI TRONG PRODUCT GROUP MAPPER");
		}
		return productGroup;
	}
	
}
