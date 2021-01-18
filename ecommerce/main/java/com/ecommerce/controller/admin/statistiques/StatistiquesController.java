package com.ecommerce.controller.admin.statistiques;

import com.ecommerce.model.Order;
import com.ecommerce.service.IOrderService;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(urlPatterns = {"/admin/thongke"}/*, "/admin/luotmuahang", "/admin/luottruycap"}*/)
public class StatistiquesController extends HttpServlet {

    @Inject
    private IOrderService orderService;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String type = req.getParameter("type");
        if(type.equalsIgnoreCase("doanhso")) {
            List<Order> orders = orderService.findAll();
            req.setAttribute("orders", orders);
            req.getRequestDispatcher("/view/admin/statistical/sales.jsp").forward(req, resp);
        }else if(type.equalsIgnoreCase("luotmuahang")) {
            System.out.println("a");
            req.getRequestDispatcher("/view/admin/statistical/buy-times.jsp").forward(req, resp);
        }else if(type.equalsIgnoreCase("luottruycap")){
            req.getRequestDispatcher("/view/admin/statistical/access-times.jsp").forward(req, resp);
        }

    }
}
