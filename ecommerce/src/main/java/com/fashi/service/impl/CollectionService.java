package com.fashi.service.impl;

import java.util.List;

import javax.inject.Inject;

import com.fashi.dao.ICollectionDAO;
import com.fashi.model.Collection;
import com.fashi.service.ICollectionService;

public class CollectionService implements ICollectionService{
	@Inject
	private ICollectionDAO collectionDAO;
		
	@Override
	public List<Collection> findAll() {
		return collectionDAO.findAll();
	}

	@Override
	public Collection findOneById(Integer id) {
		return collectionDAO.findOneById(id);
	}
	
}
