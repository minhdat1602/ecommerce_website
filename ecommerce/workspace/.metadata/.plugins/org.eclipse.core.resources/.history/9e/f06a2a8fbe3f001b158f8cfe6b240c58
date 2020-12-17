package com.ecommerce.dao.impl;

import java.util.List;

import com.ecommerce.dao.IProductDAO;
import com.ecommerce.mapper.ProductMapper;
import com.ecommerce.model.Product;
import com.ecommerce.model.ProductGroup;

public class ProductDAO extends AbstractDAO<Product> implements IProductDAO{

	@Override
	public List<Product> findAll() {
		StringBuilder sql = new StringBuilder("SELECT p.id, p.code,p.name,"); 
									sql.append("p.origin_price,p.sell_price,p.image_url,");
									sql.append("p.descriptions,p.status,p.new,p.hot,");
									sql.append("g.name as category,b.name as brand, c.name as collection ");
		sql.append("FROM products p join products_group g on p.group_id = g.id ");
						sql.append("join products_brand b on b.id = p.brand_id ");
						sql.append("join products_collection c on c.id = p.collection_id");
		return query(sql.toString(), new ProductMapper());
	}

	@Override
	public List<Product> findAll(String productGroup, String... attr) {
		StringBuilder sql = new StringBuilder("SELECT p.id, p.code,p.name,");
									sql.append("p.origin_price,p.sell_price,p.image_url,");
									sql.append("p.descriptions,p.status,p.new,p.hot,");
									sql.append("g.name as category,b.name as brand, c.name as collection ");
									sql.append("FROM products p join products_group g on p.group_id = g.id ");
									sql.append("join products_brand b on b.id = p.brand_id ");
									sql.append("join products_collection c on c.id = p.collection_id ");
									sql.append("WHERE ");
	
									sql.append("group_id in (SELECT id ");
														sql.append("FROM products_group ");
														sql.append("where `id` in (SELECT g3.id ");
														sql.append("FROM products_group g1 join products_group g2 ");
														sql.append("on g1.id = g2.parent_id ");
														sql.append("JOIN products_group g3 on g2.id = g3.parent_id ");
														sql.append("WHERE g1.`code` = " + "'" + productGroup + "')) and (");		
																														
									for (int i = 0; i < attr.length; i++) {
										sql.append(attr[i] + " = 1" );
										if (i != attr.length-1) {
											sql.append(" or ");
										} else sql.append(")");
									}							
		return query(sql.toString(), new ProductMapper());
	}
}
