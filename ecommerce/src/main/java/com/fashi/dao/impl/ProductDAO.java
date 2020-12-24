package com.fashi.dao.impl;

import java.util.List;

import com.fashi.dao.IProductDAO;
import com.fashi.mapper.ProductMapper;
import com.fashi.model.Product;

public class ProductDAO extends AbstractDAO<Product> implements IProductDAO {

	@Override
	public List<Product> findAll() {
		StringBuilder sql = new StringBuilder("SELECT p.id, p.code,p.name,");
		sql.append("p.origin_price,p.sell_price,p.image_url,");
		sql.append("p.descriptions,p.status,p.new,p.hot,p.group_id,");
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
		sql.append("p.descriptions,p.status,p.new,p.hot,p.group_id,");
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
			sql.append(attr[i] + " = 1");
			if (i != attr.length - 1) {
				sql.append(" or ");
			} else
				sql.append(")");
		}
		return query(sql.toString(), new ProductMapper());
	}

	@Override
	public Product findOne(Integer id) {
		StringBuilder sql = new StringBuilder("SELECT p.id, p.code,p.name,");
		sql.append("p.origin_price,p.sell_price,p.image_url,");
		sql.append("p.descriptions,p.status,p.new,p.hot,p.group_id,");
		sql.append("g.name as category,b.name as brand, c.name as collection ");
		sql.append("FROM products p join products_group g on p.group_id = g.id ");
		sql.append("join products_brand b on b.id = p.brand_id ");
		sql.append("join products_collection c on c.id = p.collection_id ");
		sql.append("WHERE p.id = ?");
		return query(sql.toString(), new ProductMapper(), id).get(0);
	}

	@Override
	public List<Product> findAllByPromotionId(Integer id) {
		StringBuilder sql = new StringBuilder("SELECT p.id, p.code,p.name,");
		sql.append("p.origin_price,p.sell_price,p.image_url,");
		sql.append("p.descriptions,p.status,p.new,p.hot,p.group_id,");
		sql.append("g.name as category,b.name as brand, c.name as collection ");
		sql.append("FROM products p join products_group g on p.group_id = g.id ");
		sql.append("join products_brand b on b.id = p.brand_id ");
		sql.append("join products_collection c on c.id = p.collection_id ");
		sql.append("join promotion_product pp on p.id = pp.product_id ");
		sql.append("where pp.promotion_id = ?");
		return query(sql.toString(), new ProductMapper(),id);
	}

	@Override
	public List<Product> findRelatedProduct(Integer groupId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Product> findAllByCollectionId(Integer id) {
		StringBuilder sql = new StringBuilder("SELECT p.id, p.code,p.name,");
		sql.append("p.origin_price,p.sell_price,p.image_url,");
		sql.append("p.descriptions,p.status,p.new,p.hot,p.group_id,");
		sql.append("g.name as category,b.name as brand, c.name as collection ");
		sql.append("FROM products p join products_group g on p.group_id = g.id ");
		sql.append("join products_brand b on b.id = p.brand_id ");
		sql.append("join products_collection c on c.id = p.collection_id ");
		sql.append("where p.collection_id= ?");
		return query(sql.toString(), new ProductMapper(), id);
	}

}
