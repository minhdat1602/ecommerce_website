package com.ecommerce.controller.admin;

import com.ecommerce.model.Order;
import com.ecommerce.model.OrderDetails;
import com.ecommerce.service.IOrderDetailService;
import com.ecommerce.service.IOrderService;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;

@WebServlet(urlPatterns = "/admin/donhang")
public class OrderController extends HttpServlet {
    @Inject
    private IOrderDetailService orderDetailService;
    @Inject
    private IOrderService orderService;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Order> orderList = orderService.findAll();
        System.out.println(Arrays.toString(orderList.toArray()));
        req.setAttribute("orderList", orderList);
        req.getRequestDispatcher("/view/admin/order/list-order.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //get Order id
        Integer orderId = Integer.parseInt(req.getParameter("orderId"));
        //get Order
        Order order = orderService.findOneById(orderId);
        req.setAttribute("order", order);

        //get status
        String status = req.getParameter("status");
        System.out.println(status);

        if(status != null){
            Integer newStatus = Integer.parseInt(status);
            System.out.println("Status before: " + newStatus);
            order.setStatus(newStatus);
            System.out.println("Status before: " + newStatus);
            System.out.println(order.getId());
            orderService.update(order);
            System.out.println("Status end: " + order.getStatus());

            List<Order> orderList = orderService.findAll();
            System.out.println(Arrays.toString(orderList.toArray()));
            req.setAttribute("orderList", orderList);
            req.getRequestDispatcher("/view/admin/order/list-order.jsp").forward(req,resp);
        }
        else {
            //get OrderDetail via orderId
            List<OrderDetails> orderDetails = orderDetailService.findViaOrderId(orderId);
            req.setAttribute("detailList", orderDetails);
            req.getRequestDispatcher("/view/admin/order/order-detail.jsp").forward(req,resp);
        }

    }
}
