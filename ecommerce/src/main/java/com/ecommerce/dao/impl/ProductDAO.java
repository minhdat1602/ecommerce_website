package com.ecommerce.dao.impl;

import java.util.List;

import com.ecommerce.dao.IProductDAO;
import com.ecommerce.mapper.ProductMapper;
import com.ecommerce.model.Collection;
import com.ecommerce.model.Product;
import com.ecommerce.paging.Pagable;

public class ProductDAO extends AbstractDAO<Product> implements IProductDAO {

	@Override
	public List<Product> findAll(Pagable pagable) {
		String sql;
		List<Product> list;
		if(pagable.getSortBy() == null || pagable.getSortBy().equals("")) {
			sql = "select * from products limit ?,?";
			list = query(sql, new ProductMapper(),
					(pagable.getPage() -1) * pagable.getLimit(),
					pagable.getPage() * pagable.getLimit());
		}
		else{
			sql = "select * from products order by ? ? limit ?, ?";
			 list = query(sql, new ProductMapper(),
					 pagable.getSortBy(),
					 pagable.getSortName(),
					 (pagable.getPage() - 1)*pagable.getLimit(),
					 pagable.getPage()*pagable.getLimit());
		}

		return list;
	}
	public Integer countAll(){
		String sql = "select * from products";
		List<Product> list = query(sql, new ProductMapper());
		return list.size();
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
	public Product findViaId(Integer id) {
		String sql = "select * from products where id = ?";
		List<Product> list = query(sql,new ProductMapper(), id);
		return list.size() == 0 ? null : list.get(0);
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
