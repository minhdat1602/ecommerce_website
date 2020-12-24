package com.fashi.service;

import java.util.List;

import com.fashi.model.Collection;

public interface ICollectionService {
	List<Collection> findAll();

	Collection findOneById(Integer id);
}
