package com.fashi.service.impl;

import java.util.List;

import javax.inject.Inject;

import com.fashi.dao.IImageDAO;
import com.fashi.model.Images;
import com.fashi.service.IImageService;

public class ImageService implements IImageService{
	@Inject
	private IImageDAO imageDAO;
	@Override
	public List<Images> findAllByProductId(Integer productId) {
		return imageDAO.findAllByProductId(productId);
	}

}
