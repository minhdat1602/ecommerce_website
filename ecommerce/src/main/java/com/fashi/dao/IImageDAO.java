package com.fashi.dao;

import java.util.List;

import com.fashi.model.Images;

public interface IImageDAO extends IGenericDAO<Images>{
	List<Images> findAllByProductId(Integer productId);
}
