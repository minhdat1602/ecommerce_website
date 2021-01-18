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
        groupMen = productGroupService.findAll(2, "NAM");
        groupWomen = productGroupService.findAll(2, "NU");

        String men = req.getParameter("men");
        String women = req.getParameter("women");

        if(men == null)
            men = "4";
        if(women == null)
            women = "10";

        if (men == null || men.equals(""))
            listForMen = productService.findAll(4);//id
        else {
            listForMen = productService.findAll(Integer.parseInt(men));
        }

        if (women == null || women.equals(""))
            listForWomen = productService.findAll(10);
        else {
            listForWomen = productService.findAll(Integer.parseInt(women));
        }

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
