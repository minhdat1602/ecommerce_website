package com.fashi.dao.impl;

import java.util.List;

import com.fashi.dao.IImageDAO;
import com.fashi.mapper.ImageMapper;
import com.fashi.model.Images;

public class ImageDAO extends AbstractDAO<Images> implements IImageDAO{

	@Override
	public List<Images> findAllByProductId(Integer productId) {
		StringBuilder sql = new StringBuilder("select i.id,i.image_url ");
									sql.append("from images i join images_type it ");
													sql.append("on i.id = it.image_id ");
													sql.append("join products p ");
													sql.append("on p.id = it.data_id ");
									sql.append("where it.data_id = 1 and p.id = ?");
		return query(sql.toString(), new ImageMapper(), productId);
	}
	
}
