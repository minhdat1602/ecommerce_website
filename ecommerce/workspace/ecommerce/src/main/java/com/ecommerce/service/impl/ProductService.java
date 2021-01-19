package com.ecommerce.service.impl;

import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;

import com.ecommerce.dao.IProductDAO;
import com.ecommerce.dao.impl.ProductDAO;
import com.ecommerce.model.Collection;
import com.ecommerce.model.Product;
import com.ecommerce.model.ProductGroup;
import com.ecommerce.service.IProductGroupService;
import com.ecommerce.service.IProductService;

public class ProductService implements IProductService{
	@Inject 
	private IProductDAO productDAO;
	 @Inject
	    private IProductGroupService productGroupService;
		
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

	@Override
	public Integer getTotalProduct() {
		return productDAO.getTotalProduct();
	}

	@Override
	public List<Product> findAll(Product pageable) {
		return productDAO.findAll(pageable);
	}

	@Override
	public void delete(int[] ids) {
		for (int id : ids) {
			productDAO.delete(id);
		}
	}

	@Override
	public Integer save(Product product) {
		return productDAO.save(product);
	}

	@Override
	public boolean update(Product product) {
		return productDAO.update(product);
	}
	@Override
    public List<Product> findAll(Integer groupId){
    	List<Product> list = new ArrayList<Product>();
    	getChildGroup(list, groupId);
    	return list;
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
	private List<Product> findByGroupId(Integer groupId) {
        return productDAO.findByGroupId(groupId);
    }
}
