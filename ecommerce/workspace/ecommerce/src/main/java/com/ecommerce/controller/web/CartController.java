package com.ecommerce.controller.web;

import com.ecommerce.dao.ICartDetailDAO;
import com.ecommerce.model.Cart;
import com.ecommerce.model.CartDetails;
import com.ecommerce.model.Product;
import com.ecommerce.model.Stock;
import com.ecommerce.service.ICartDetailService;
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
    /*@Inject
    private ICartDetailService cartDetailService;*/
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
                Integer sizeId = null;
                Integer colorId = null;
                Integer productId = null;

                try {
                    sizeId = Integer.parseInt(req.getParameter("sizeId"));
                    colorId = Integer.parseInt(req.getParameter("colorId"));
                    productId = Integer.parseInt(req.getParameter("productId"));
                }catch (Exception e){
                    e.printStackTrace();
                }

                Stock stock = stockService.findOne(sizeId, colorId, productId);
                boolean constaint = false;

                for(CartDetails cd : cart.getCartDetailsList()){
                    if(cd.getStockId() == stock.getId() ){
                        cd.sub();
                        cartService.updateItem(cd);
                        constaint = true;
                        break;
                    }
                }
                CartDetails cartDetails = null;
                if(!constaint){
                    cartDetails = new CartDetails();
                    cartDetails.setCartId(cart.getId());
                    cartDetails.setStock(stock);
                    cartDetails.setStockId(stock.getId());
                    cartDetails.setQuantity(1);

                    cartDetails = cartService.insertItem(cartDetails);
                }
                cart.getCartDetailsList().add(cartDetails);
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
