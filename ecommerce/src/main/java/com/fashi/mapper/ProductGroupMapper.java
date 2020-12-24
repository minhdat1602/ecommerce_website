package com.fashi.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.fashi.model.ProductGroup;

public class ProductGroupMapper implements RowMapper<ProductGroup>{

	@Override
	public ProductGroup mapRow(ResultSet resultSet) {
		ProductGroup productGroup = new ProductGroup();
		try {
			productGroup.setId(resultSet.getInt("id"));
			productGroup.setName(resultSet.getString("name"));
			productGroup.setCode(resultSet.getString("code"));
		} catch (SQLException e) {
			return null;
		}
		return productGroup;
	}
	
}
