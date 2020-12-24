package com.fashi.dao;

import java.util.List;

import com.fashi.model.Collection;

public interface ICollectionDAO extends IGenericDAO<Collection>{
	List<Collection> findAll();

	Collection findOneById(Integer id);
}
