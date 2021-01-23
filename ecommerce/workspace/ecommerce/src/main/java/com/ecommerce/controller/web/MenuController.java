package com.ecommerce.controller.web;

import com.ecommerce.model.Collection;
import com.ecommerce.model.ProductGroup;
import com.ecommerce.service.ICollectionService;
import com.ecommerce.service.IProductGroupService;

import javax.inject.Inject;
import javax.servlet.*;
import java.io.IOException;
import java.util.List;

public class MenuController implements Filter {
    @Inject
    private ICollectionService collectionService;
    @Inject
    private IProductGroupService productGroupService;

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        List<Collection> collectionList = collectionService.findAll();
        servletRequest.setAttribute("CL", collectionList);

        List<ProductGroup> groupListLv1 =productGroupService.findAll(1);
        servletRequest.setAttribute("lv1", groupListLv1);

        // Cho phép request được đi tiếp. (Vượt qua Filter này).
        filterChain.doFilter(servletRequest, servletResponse);
    }

    @Override
    public void destroy() {

    }
}
