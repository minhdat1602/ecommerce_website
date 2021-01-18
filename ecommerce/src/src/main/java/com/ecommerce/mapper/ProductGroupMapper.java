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
			productGroup.setParentGroupId(resultSet.getInt("parent_id"));
			productGroup.setLevel(resultSet.getInt("level"));

			//admin
		} catch (SQLException e) {
			return null;
		}
		return productGroup;
	}
	
}
