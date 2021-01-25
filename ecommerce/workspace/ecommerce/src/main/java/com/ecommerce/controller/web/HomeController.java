package com.ecommerce.controller.web;

import com.ecommerce.model.Product;
import com.ecommerce.model.ProductGroup;
import com.ecommerce.service.IProductGroupService;
import com.ecommerce.service.IProductService;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(urlPatterns = "/trang-chu")
public class HomeController extends HttpServlet {
    @Inject
    private IProductService productService;
    @Inject
    private IProductGroupService productGroupService;

    private List<ProductGroup> groupMen;
    private List<ProductGroup> groupWomen;

    private List<Product> listForMen;
    private List<Product> listForWomen;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        resp.setCharacterEncoding("UTF-8");
        groupMen = productGroupService.findAll(2, "NAM");
        groupWomen = productGroupService.findAll(2, "NU");

        String men = req.getParameter("men");
        String women = req.getParameter("women");

        Product pageable = new Product();
        pageable.setLimit(9);
        pageable.setOffset(0);
        Integer isHot = 1;
        Integer isNew = 1;
        Integer level = 2;

        if (men == null || men.equals(""))
            men = "Áo nam";
        String[] groupNameMenArr = new String[1];
        groupNameMenArr[0] = men;
        pageable.setGroupNameArr(groupNameMenArr);
        listForMen = productService.findAll(pageable, 1, 1, pageable.getGroupNameArr(), pageable.getBrandNameArr(),
                pageable.getCollectionNameArr(), level);

        /*listForMen = productService.findAll(pageable, isHot, isNew, men, null, null);*/

        if (women == null || women.equals(""))
            women = "Áo nữ";
        String[] groupNameWomanArr = new String[1];
        groupNameWomanArr[0] = women;
        pageable.setGroupNameArr(groupNameWomanArr);
        listForWomen = productService.findAll(pageable, 1, 1, pageable.getGroupNameArr(), pageable.getBrandNameArr(),
                pageable.getCollectionNameArr(), level);
        /*listForWomen = productService.findAll(pageable, isHot, isNew, women, null, null);*/

        req.setAttribute("men", men);
        req.setAttribute("women", women);
        req.setAttribute("listMen", listForMen);
        req.setAttribute("listWomen", listForWomen);
        req.setAttribute("groupMen", groupMen);
        req.setAttribute("groupWomen", groupWomen);

        req.getRequestDispatcher("/view/web/index.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    }
}
