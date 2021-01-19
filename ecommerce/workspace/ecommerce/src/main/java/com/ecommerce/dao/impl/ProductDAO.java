package com.ecommerce.dao.impl;

import java.util.List;

import com.ecommerce.dao.IProductDAO;
import com.ecommerce.mapper.CollectionMapper;
import com.ecommerce.mapper.ProductMapper;
import com.ecommerce.model.Collection;
import com.ecommerce.model.Product;
import com.ecommerce.model.ProductGroup;

public class ProductDAO extends AbstractDAO<Product> implements IProductDAO {

	@Override
	public List<Product> findAll() {
		StringBuilder sql = new StringBuilder("SELECT p.id, p.code,p.name,");
		sql.append("p.origin_price,p.sell_price,p.image_url,");
		sql.append("p.descriptions,p.status,p.new,p.hot,p.group_id,p.brand_id as brand_id,");
		sql.append("g.name as category,b.name as brand, c.name as collection ");
		sql.append("FROM products p join products_group g on p.group_id = g.id ");
		sql.append("join products_brand b on b.id = p.brand_id ");
		sql.append("join products_collection c on c.id = p.collection_id ");
		sql.append("where p.status = 1");
		return query(sql.toString(), new ProductMapper());
	}

	@Override
	public List<Product> findAll(String productGroup, String... attr) {
		StringBuilder sql = new StringBuilder("SELECT p.id, p.code,p.name,");
		sql.append("p.origin_price,p.sell_price,p.image_url,");
		sql.append("p.descriptions,p.status,p.new,p.hot,p.group_id,p.brand_id as brand_id,");
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
		sql.append("WHERE  p.status = 1 and g1.`code` = " + "'" + productGroup + "')) and (");

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
		sql.append("p.descriptions,p.status,p.new,p.hot,p.group_id,p.brand_id as brand_id,");
		sql.append("g.name as category,b.name as brand, c.name as collection ");
		sql.append("FROM products p join products_group g on p.group_id = g.id ");
		sql.append("join products_brand b on b.id = p.brand_id ");
		sql.append("join products_collection c on c.id = p.collection_id ");
		sql.append("WHERE  p.status = 1 and p.id = ?");
		return query(sql.toString(), new ProductMapper(), id).get(0);
	}
	
	@Override
	public List<Product> findAllByPromotionId(Integer id) {
		StringBuilder sql = new StringBuilder("SELECT p.id, p.code,p.name,");
		sql.append("p.origin_price,p.sell_price,p.image_url,");
		sql.append("p.descriptions,p.status,p.new,p.hot,p.group_id,p.brand_id as brand_id,");
		sql.append("g.name as category,b.name as brand, c.name as collection ");
		sql.append("FROM products p join products_group g on p.group_id = g.id ");
		sql.append("join products_brand b on b.id = p.brand_id ");
		sql.append("join products_collection c on c.id = p.collection_id ");
		sql.append("join promotion_product pp on p.id = pp.product_id ");
		sql.append("where  p.status = 1 and pp.promotion_id = ?");
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
		sql.append("where  p.status = 1 and p.collection_id= ?");
		return query(sql.toString(), new ProductMapper(), id);
	}

	@Override
	public Integer getTotalProduct() {
		String sql = "select count(id) from products where status = 1";
		return count(sql);
	}

	@Override
	public List<Product> findAll(Product pageable) {
		StringBuilder sql = new StringBuilder("SELECT p.id, p.code,p.name,");
		sql.append("p.origin_price,p.sell_price,p.image_url,");
		sql.append("p.descriptions,p.status,p.new,p.hot,p.group_id,p.brand_id as brand_id,");
		sql.append("g.name as category,b.name as brand, c.name as collection ");
		sql.append("FROM products p join products_group g on p.group_id = g.id ");
		sql.append("join products_brand b on b.id = p.brand_id ");
		sql.append("join products_collection c on c.id = p.collection_id ");
		sql.append("where p.status = 1 ");
		sql.append("limit ? offset ? ");
		
		return query(sql.toString(), new ProductMapper(), pageable.getMaxPageItem(), pageable.getOffset());
	}

	@Override
	public void delete(int id) {
		String sql = "update products set status = 0 where id = ?";
		update(sql, id);
	}

	@Override
	public Integer save(Product product) {
		StringBuilder sql = new StringBuilder("insert into products (code,name,origin_price,sell_price,group_id,brand_id,image_url,descriptions,collection_id,status,new,hot)");
		sql.append(" values (?,?,?,?,?,?,?,?,?,?,?,?)");
		return insert(sql.toString(), product.getCode(),
				product.getName(),
				product.getOriginPrice(),
				product.getSellPrice(),
				product.getGroupId(),
				product.getBrandId(),
				product.getImageUrl(),
				product.getDescription(),
				product.getCollectionId(),
				product.getStatus(),
				product.getNewProduct(),
				product.getHotProduct()
				);
	}
	
	@Override
	public List<Product> findAll(String segment, String group, Integer isHot, Integer isNew) {
		StringBuilder sb = new StringBuilder();
		sb.append("select p.id, p.name, p.code, p.origin_price, p.discount, p.sell_price, ");
		sb.append("gr.code as group, sm.code as segment,mt.code as material,");
		sb.append("br.code as brand, cl.code as collection, p.image_url, p.descriptions, p.status, p.new, p.hot ");
		sb.append("from products p join products_group gr on p.group_id = gr.id ");
		sb.append("join products_segment sm on p.segment_id = sm.id ");
		sb.append("join products_material mt on p.material_id = mt.id ");
		sb.append("join products_brand br on p.brand_id = br.id ");
		sb.append("join products_collection cl on p.collection_id = cl.id ");
		sb.append("where gr.code = ? and sm.code = ? and p.hot = ? and p.new = ?");

		String sql = "select p.id, p.name, p.code, p.origin_price, p.discount, p.sell_price, " +
				"gr.code as group_code, sm.code as segment_code,mt.code as material_code, " +
				"br.code as brand_code, cl.code as collection_code, p.image_url, p.descriptions, p.status, p.new, p.hot  " +
				"from products p join products_group gr on p.group_id = gr.id  " +
				"join products_segment sm on p.segment_id = sm.id  " +
				"join products_material mt on p.material_id = mt.id  " +
				"join products_brand br on p.brand_id = br.id  " +
				"join products_collection cl on p.collection_id = cl.id  " +
				"where gr.code = ? and sm.code = ? and p.hot = ? and p.new = ? and status = ?";

		List<Product> list = query(sql, new ProductMapper(), segment, group, isHot, isNew, 1);
		return list;
	}

	@Override
	public List<Product> findByGroupId(Integer groupId) {
		String sql = "select * from products where group_id = ?";
		return query(sql, new ProductMapper(), groupId);
	}

	@Override
	public boolean update(Product product) {
		StringBuilder sql = new StringBuilder("update products products set code =?,name=?,origin_price=?,sell_price=?,group_id=?,brand_id=?,image_url=?,descriptions=? ");
		sql.append(" where id = ?");
		return updated(sql.toString(), 
				product.getCode(),
				product.getName(),
				product.getOriginPrice(),
				product.getSellPrice(),
				product.getGroupId(),
				product.getBrandId(),
				product.getImageUrl(),
				product.getDescription(),
				product.getId()
				);
	}
	
	@Override
	public boolean importProduct(Product product) {
		StringBuilder sql = new StringBuilder("update products products set code =?,name=?,origin_price=?,sell_price=?,group_id=?,brand_id=?,image_url=?,descriptions=? ");
		sql.append(" where id = ?");
		return updated(sql.toString(), 
				product.getCode(),
				product.getName(),
				product.getOriginPrice(),
				product.getSellPrice(),
				product.getGroupId(),
				product.getBrandId(),
				product.getImageUrl(),
				product.getDescription(),
				product.getId()
				);
	}

}
