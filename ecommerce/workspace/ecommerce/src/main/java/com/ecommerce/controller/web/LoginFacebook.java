
package com.ecommerce.controller.web;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ecommerce.model.RestFB;
import com.restfb.types.User;

@WebServlet(urlPatterns = "/dang-nhap/facebook")
public class LoginFacebook extends HttpServlet{
	private static final long serialVersionUID = 1L;
	  public LoginFacebook() {
	    super();
	  }
	  protected void doGet(HttpServletRequest request, HttpServletResponse response)
	      throws ServletException, IOException {
	    String code = request.getParameter("code");
	    
	    if (code == null || code.isEmpty()) {
	      RequestDispatcher dis = request.getRequestDispatcher("/view/web/login.jsp");
	      dis.forward(request, response);
	    } else {
	      String accessToken = RestFB.getToken(code);
	      User user = RestFB.getUserInfo(accessToken);
	      com.ecommerce.model.User userFashi = new com.ecommerce.model.User();
	      userFashi.setFirstName(user.getName());
	      userFashi.setLastName("");
	      HttpSession ss = request.getSession();
	      ss.setAttribute("USERMODEL", userFashi);
	      response.sendRedirect(request.getContextPath() + "/trang-chu");
	    }
	    
	  }
	  protected void doPost(HttpServletRequest request, HttpServletResponse response)
	      throws ServletException, IOException {
	    doGet(request, response);
	  }

}
