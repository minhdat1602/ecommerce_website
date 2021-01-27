package com.ecommerce.controller.web;

import com.ecommerce.model.User;
import com.ecommerce.service.IUserService;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = "/dang-ky")
public class RegisterController extends HttpServlet {
    @Inject
    private IUserService userService;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/view/web/register.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        resp.setCharacterEncoding("UTF-8");
        String fname = req.getParameter("fname");
        String lname = req.getParameter("lname");
        String username = req.getParameter("username");
        String password = req.getParameter("password");
        password = PasswordEncryption.MD5(password);
        System.out.println(password);
        String email = req.getParameter("email");

        boolean checkEmail = userService.checkEmail(email);

        User tmp = userService.getUser(username);
        if (tmp == null && checkEmail) {
            User user = new User();
            user.setFirstName(fname);
            user.setLastName(lname);
            user.setUsername(username);
            user.setPassword(password);
            user.setEmail(email);
            user.setStatus(1);
            user.setGroupId(1);
            //chua dung
            //user.setCreatedDate(new Timestamp(Calendar.getInstance().getTimeInMillis()));
            try {
                user = userService.insert(user);
                req.getSession().setAttribute("USERMODEL", user);
            } catch (Exception e) {
                resp.sendRedirect(req.getContextPath() + "/trang-chu");
            }
            resp.sendRedirect(req.getContextPath() + "/capnhat?page=info");
        } else {
            if (!checkEmail)
                req.setAttribute("email-err", "Email này đã tồn tại");
            if (tmp != null)
                req.setAttribute("uname-err", "Tên tài khoản đã tồn tại");
            req.setAttribute("fname", fname);
            req.setAttribute("lname", lname);
            req.setAttribute("email", email);

            req.getRequestDispatcher("/view/web/register.jsp").forward(req, resp);
        }
    }
}
