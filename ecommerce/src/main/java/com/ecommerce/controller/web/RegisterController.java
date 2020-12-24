package com.ecommerce.controller.web;

import java.io.IOException;
import java.sql.Date;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Calendar;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ecommerce.model.User;
import com.ecommerce.service.IUserService;

@WebServlet(urlPatterns = "/dang-ky")
public class RegisterController extends HttpServlet{
	@Inject
	private IUserService userService;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.getRequestDispatcher("/view/web/register.jsp").forward(req, resp);
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String fullname = req.getParameter("fullname");
		String birth = req.getParameter("birth");
		String gender = req.getParameter("gender");
		String email = req.getParameter("email");
		String phone = req.getParameter("phone");
		String address = req.getParameter("address");
		String username = req.getParameter("username");
		String password = req.getParameter("password");
		String dateRegister = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(Calendar.getInstance().getTime());		

		User user = new User(fullname, username, password, email, phone, gender, address);
		if (userService.exist(user.getUsername())) {
			req.setAttribute("user", user);
			req.getRequestDispatcher("/view/web/register.jsp").forward(req, resp);
		} else {
			user.setBirth(Date.valueOf(birth));
			user.setStatus(1);
			user.setGroupId(1);
			user.setDateRegister( Timestamp.valueOf(dateRegister));
			Integer id = userService.insert(user);
			req.getSession().setAttribute("userRegister", userService.findOneById(id));
			resp.sendRedirect("dang-nhap");
		}
		
	}
//	public static void main(String[] args) {
//		String dateRegister = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(Calendar.getInstance().getTime());	
//		System.out.println(Timestamp.valueOf(dateRegister));
//	}
}
