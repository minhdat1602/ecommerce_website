package com.ecommerce.controller.web;

import com.ecommerce.model.Cart;
import com.ecommerce.model.CartDetails;
import com.ecommerce.model.Product;
import com.ecommerce.model.Stock;
import com.ecommerce.service.ICartService;
import com.ecommerce.service.IProductService;
import com.ecommerce.service.IStockService;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = "/gio-hang")
public class CartController extends HttpServlet {

    @Inject
    private ICartService cartService;
    @Inject
    private IProductService productService;
    @Inject
    private IStockService stockService;
    //hello
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/view/web/shopping-cart.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action;
        Integer detailCartId;
        try {
            action = req.getParameter("action");
            System.out.println(action);
            detailCartId = Integer.parseInt(req.getParameter("detailCartId"));
            Cart cart = (Cart) req.getSession().getAttribute("CART");
            if (action.equals("update")) {
                String method;
                try {
                    method = req.getParameter("method");
                    boolean updated;
                    CartDetails item = cart.getItem(detailCartId);
                    switch (method) {
                        case "sub":
                            item.sub();
                            updated = cartService.updateItem(item);
                            System.out.println("UPDATE: " + updated);
                            break;
                        case "plus":
                            item.plus();
                            updated = cartService.updateItem(item);
                            System.out.println("UPDATE: " + updated);
                            break;
                    }
                } catch (Exception e) {
                    resp.sendRedirect("/view/error.jsp");
                }
            } else if (action.equals("add")) {
                String size = req.getParameter("size");
                String color = req.getParameter("color");
                Integer productId = Integer.parseInt(req.getParameter("productId"));

                Product product = productService.findOne(productId);
                Stock stock = stockService.findOne(size, color, productId);
                stock.setProduct(product);

                CartDetails newCartDetail = new CartDetails();
                newCartDetail.setQuantity(1);
                newCartDetail.setCartId(cart.getId());
                newCartDetail.setStockId(stock.getId());


                CartDetails iscartDetails = cartService.insertItem(newCartDetail);
                iscartDetails.setStock(stock);
                cart.getCartDetailsList().add(iscartDetails);
                resp.sendRedirect(req.getContextPath() + "/products?id=" + productId);
            } else if (action.equals("delete")) {
                boolean deleted = cartService.deleteDetailItemById(detailCartId);
                System.out.println("DELETED: " + deleted);
                if (deleted) {
                    boolean rmItem = cart.removeItem(detailCartId);
                    System.out.println("Remove item: " + rmItem);
                    /*req.removeAttribute("CART");
                    req.getSession().setAttribute("CART", cart);*/
                }
            }
            resp.sendRedirect(req.getRequestURI());
        } catch (Exception e) {
            resp.sendRedirect("/view/error.jsp");
        }
    }
}
