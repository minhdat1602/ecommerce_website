package com.ecommerce.service.impl;

import com.ecommerce.dao.IProductDAO;
import com.ecommerce.model.Product;
import com.ecommerce.model.ProductGroup;
import com.ecommerce.service.IProductGroupService;
import com.ecommerce.service.IProductService;

import javax.inject.Inject;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class ProductService implements IProductService {
    @Inject
    private IProductDAO productDAO;
    @Inject
    private IProductGroupService productGroupService;

	@Override
    public List<Product> findAll(Integer groupId){
    	List<Product> list = new ArrayList<Product>();
    	getChildGroup(list, groupId);
    	return list;
	}


    private List<Product> findByGroupId(Integer groupId) {
        return productDAO.findByGroupId(groupId);
    }


    private void getChildGroup(List<Product> list, Integer parentId) {
        List<ProductGroup> listGroup = productGroupService.findByParentId(parentId);
        if (listGroup.size() != 0) {
            for (ProductGroup g : listGroup) {
               getChildGroup(list, g.getId());
            }
        }else{
            List<Product> l = findByGroupId(parentId);
			for(int i = 0; i < l.size(); i++){
			    list.add(l.get(i));
            }
        }
    }

    @Override
    public List<Product> findAll() {
        return productDAO.findAll();
    }

    @Override
    public List<Product> findAll(String productGroup, String... attr) {
        return productDAO.findAll(productGroup, attr);
    }

    @Override
    public Product findOne(Integer id) {
        return productDAO.findOne(id);
    }

    @Override
    public List<Product> findAllByPromotionId(Integer id) {
        return productDAO.findAllByPromotionId(id);
    }

    @Override
    public List<Product> findRelatedProduct(Integer groupId) {
        return productDAO.findRelatedProduct(groupId);
    }

    @Override
    public List<Product> findAllByCollectionId(Integer id) {
        return productDAO.findAllByCollectionId(id);
    }


}
