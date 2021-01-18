package com.ecommerce.controller.admin;

import java.io.IOException;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ecommerce.model.Order;
import com.ecommerce.service.IOrderService;

@WebServlet(urlPatterns = "/admin/danh-sach-don-hang")
public class OrderController extends HttpServlet{
	
	@Inject
	private IOrderService orderService;
	
	private List<Order> listOrder;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		listOrder = orderService.findAll();
		req.setAttribute("listOrder", listOrder);
		
		
		req.getRequestDispatcher("/view/admin/order/list-order.jsp").forward(req, resp);
	}
}
