package com.ecommerce.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.ecommerce.model.ProductSize;

public class ProductSizeMapper implements RowMapper<ProductSize>{

	@Override
	public ProductSize mapRow(ResultSet resultSet) {
		ProductSize size = new ProductSize();
		try {
			size.setId(resultSet.getInt("id"));
			size.setName(resultSet.getString("size_name"));
		} catch (SQLException e) {
			return null;
		}
		return size;
	}

}
