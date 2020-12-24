package com.fashi.service;

import java.util.List;

import com.fashi.model.Images;

public interface IImageService {
	List<Images> findAllByProductId(Integer productId);
}
