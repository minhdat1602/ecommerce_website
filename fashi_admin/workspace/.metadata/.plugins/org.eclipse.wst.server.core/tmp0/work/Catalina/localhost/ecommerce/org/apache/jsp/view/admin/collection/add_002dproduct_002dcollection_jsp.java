/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.5.56
 * Generated at: 2020-11-16 04:26:27 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.view.admin.collection;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class add_002dproduct_002dcollection_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(5);
    _jspx_dependants.put("/common/taglib.jsp", Long.valueOf(1605004395856L));
    _jspx_dependants.put("/WEB-INF/lib/jstl-1.2.jar", Long.valueOf(1599801223744L));
    _jspx_dependants.put("jar:file:/C:/Users/Admin/Desktop/ecommerce/workspace/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps/ecommerce/WEB-INF/lib/jstl-1.2.jar!/META-INF/c.tld", Long.valueOf(1153359882000L));
    _jspx_dependants.put("/WEB-INF/lib/sitemesh-2.4.2.jar", Long.valueOf(1599801224031L));
    _jspx_dependants.put("jar:file:/C:/Users/Admin/Desktop/ecommerce/workspace/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps/ecommerce/WEB-INF/lib/sitemesh-2.4.2.jar!/META-INF/sitemesh-decorator.tld", Long.valueOf(1123653092000L));
  }

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = null;
  }

  private org.apache.jasper.runtime.TagHandlerPool _005fjspx_005ftagPool_005fc_005furl_0026_005fvalue_005fnobody;

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
    _005fjspx_005ftagPool_005fc_005furl_0026_005fvalue_005fnobody = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
  }

  public void _jspDestroy() {
    _005fjspx_005ftagPool_005fc_005furl_0026_005fvalue_005fnobody.release();
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    final java.lang.String _jspx_method = request.getMethod();
    if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method) && !javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSPs only permit GET, POST or HEAD. Jasper also permits OPTIONS");
      return;
    }

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write('\r');
      out.write('\n');
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta charset=\"UTF-8\">\r\n");
      out.write("<title>Chọn sản phẩm cho bộ sưu tập</title>\r\n");
      out.write("<style type=\"text/css\">\r\n");
      out.write("\t.scrollDiv .table.text-center img {\r\n");
      out.write("\t\twidth: 60px;\r\n");
      out.write("\t\theight: 60px;\r\n");
      out.write("\t}\r\n");
      out.write("\t\r\n");
      out.write("\t.scrollDiv .table.text-center  td {\r\n");
      out.write("\t\tline-height: 60px;\r\n");
      out.write("\t}\r\n");
      out.write("</style>\r\n");
      out.write("<script\r\n");
      out.write("\tsrc=\"");
      if (_jspx_meth_c_005furl_005f0(_jspx_page_context))
        return;
      out.write("\"></script>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("\t<h3 class=\"ml-4 mt-3\">Chọn sản phẩm cho bộ sưu tập</h3>\r\n");
      out.write("\t<div class=\"product-show-option\">\r\n");
      out.write("\t\t<div class=\"row\">\r\n");
      out.write("\t\t\t<div class=\"col-lg-7 col-md-7\">\r\n");
      out.write("\t\t\t\t<div class=\"select-option\">\r\n");
      out.write("\t\t\t\t\t<select id=\"sorting\" class=\"sorting\">\r\n");
      out.write("\t\t\t\t\t\t<option value=\"\">Tên</option>\r\n");
      out.write("\t\t\t\t\t\t<option value=\"\">Gía cao</option>\r\n");
      out.write("\t\t\t\t\t\t<option value=\"\">Gía thấp</option>\r\n");
      out.write("\t\t\t\t\t\t<option value=\"\">Tồn kho</option>\r\n");
      out.write("\t\t\t\t\t</select> <label for=\"sorting\" id=\"labelForSorting\">Sắp xếp theo: </label> <select\r\n");
      out.write("\t\t\t\t\t\tid=\"p-show\" class=\"p-show\">\r\n");
      out.write("\t\t\t\t\t\t<option value=\"\">10</option>\r\n");
      out.write("\t\t\t\t\t\t<option value=\"\">15</option>\r\n");
      out.write("\t\t\t\t\t\t<option value=\"\">20</option>\r\n");
      out.write("\t\t\t\t\t</select> <label for=\"p-show\" id=\"labelForTotalItem\">Hiển thị:</label>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t</div>\r\n");
      out.write("\r\n");
      out.write("\t<div class=\"scrollDiv\">\r\n");
      out.write("\t\t<table class=\"table text-center\">\r\n");
      out.write("\t\t\t<thead class=\"thead-dark\">\r\n");
      out.write("\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t<th scope=\"col\">Thêm</th>\r\n");
      out.write("\t\t\t\t\t<th scope=\"col\">ID</th>\r\n");
      out.write("\t\t\t\t\t<th scope=\"col\">Tên</th>\r\n");
      out.write("\t\t\t\t\t<th scope=\"col\">Hình ảnh</th>\r\n");
      out.write("\t\t\t\t\t<th scope=\"col\"><select id=\"category\" style=\"cursor: pointer;\">\r\n");
      out.write("\t\t\t\t\t\t\t<option>Phân loại</option>\r\n");
      out.write("\t\t\t\t\t\t\t<optgroup label=\"Quần\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<option>Tất cả Quần</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t<option>Kaki</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t<option>Tây</option>\r\n");
      out.write("\t\t\t\t\t\t\t</optgroup>\r\n");
      out.write("\t\t\t\t\t\t\t<optgroup label=\"Áo\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<option>Tất cả Áo</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t<option>Thun</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t<option>Khoác</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t<option>Sơ mi</option>\r\n");
      out.write("\t\t\t\t\t\t\t</optgroup>\r\n");
      out.write("\t\t\t\t\t\t\t<optgroup label=\"Phụ kiện\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<option>Tất cả PK</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t<option>Thắt lưng</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t<option>Ví</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t<option>Tất</option>\r\n");
      out.write("\t\t\t\t\t\t\t</optgroup>\r\n");
      out.write("\t\t\t\t\t</select></th>\r\n");
      out.write("\t\t\t\t\t<th scope=\"col\"><select id=\"for\" style=\"cursor: pointer;\">\r\n");
      out.write("\t\t\t\t\t\t\t<option>Dành cho</option>\r\n");
      out.write("\t\t\t\t\t\t\t<option>Nam</option>\r\n");
      out.write("\t\t\t\t\t\t\t<option>Nữ</option>\r\n");
      out.write("\t\t\t\t\t\t\t<option>Trẻ em</option>\r\n");
      out.write("\t\t\t\t\t</select></th>\r\n");
      out.write("\t\t\t\t\t<th scope=\"col\">Gía bán</th>\r\n");
      out.write("\t\t\t\t\t<th scope=\"col\">Gía niêm yết</th>\r\n");
      out.write("\t\t\t\t\t<th scope=\"col\"><select id=\"status\" style=\"cursor: pointer;\">\r\n");
      out.write("\t\t\t\t\t\t\t<option>Trạng thái</option>\r\n");
      out.write("\t\t\t\t\t\t\t<option>Thông thường</option>\r\n");
      out.write("\t\t\t\t\t\t\t<option>Hàng mới</option>\r\n");
      out.write("\t\t\t\t\t\t\t<option>Nổi bật</option>\r\n");
      out.write("\t\t\t\t\t\t\t<option>Khuyến mãi</option>\r\n");
      out.write("\t\t\t\t\t</select></th>\r\n");
      out.write("\t\t\t\t\t<th scope=\"col\">Tồn kho</th>\r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("\t\t\t</thead>\r\n");
      out.write("\t\t\t<tbody class=\"scrollDiv\">\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t<td style=\"line-height: 60px;\"><input type=\"checkbox\" name=\"delete\"></td>\r\n");
      out.write("\t\t\t\t\t<td style=\"line-height: 60px;\" scope=\"row\">1</td>\r\n");
      out.write("\t\t\t\t\t<td style=\"line-height: 60px;\">Áo len</td>\r\n");
      out.write("\t\t\t\t\t<td><img style=\"width: 60px;height: 60px;\" alt=\"\"\r\n");
      out.write("\t\t\t\t\t\tsrc=\"");
      if (_jspx_meth_c_005furl_005f1(_jspx_page_context))
        return;
      out.write("\"></td>\r\n");
      out.write("\t\t\t\t\t<td style=\"line-height: 60px;\">Áo</td>\r\n");
      out.write("\t\t\t\t\t<td style=\"line-height: 60px;\">Nữ</td>\r\n");
      out.write("\t\t\t\t\t<td style=\"line-height: 60px;\">100.000</td>\r\n");
      out.write("\t\t\t\t\t<td style=\"line-height: 60px;\">200.000</td>\r\n");
      out.write("\t\t\t\t\t<td style=\"line-height: 60px;\">Khuyến mãi</td>\r\n");
      out.write("\t\t\t\t\t<td style=\"line-height: 60px;\">158</td>\r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t<td style=\"line-height: 60px;\"><input type=\"checkbox\" name=\"delete\"></td>\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t\t\t<td style=\"line-height: 60px;\" scope=\"row\">2</td>\r\n");
      out.write("\t\t\t\t\t<td style=\"line-height: 60px;\">Áo len croptop</td>\r\n");
      out.write("\t\t\t\t\t<td><img style=\"width: 60px;height: 60px;\" alt=\"\"\r\n");
      out.write("\t\t\t\t\t\tsrc=\"");
      if (_jspx_meth_c_005furl_005f2(_jspx_page_context))
        return;
      out.write("\"></td>\r\n");
      out.write("\t\t\t\t\t<td style=\"line-height: 60px;\">Áo</td>\r\n");
      out.write("\t\t\t\t\t<td style=\"line-height: 60px;\">Nữ</td>\r\n");
      out.write("\t\t\t\t\t<td style=\"line-height: 60px;\">150.000</td>\r\n");
      out.write("\t\t\t\t\t<td style=\"line-height: 60px;\">200.000</td>\r\n");
      out.write("\t\t\t\t\t<td style=\"line-height: 60px;\">Khuyến mãi</td>\r\n");
      out.write("\t\t\t\t\t<td style=\"line-height: 60px;\">98</td>\r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t<td style=\"line-height: 60px;\"><input type=\"checkbox\" name=\"delete\"></td>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t<td style=\"line-height: 60px;\" scope=\"row\">3</td>\r\n");
      out.write("\t\t\t\t\t<td style=\"line-height: 60px;\">Áo khoác kaki</td>\r\n");
      out.write("\t\t\t\t\t<td><img style=\"width: 60px;height: 60px;\" alt=\"\"\r\n");
      out.write("\t\t\t\t\t\tsrc=\"");
      if (_jspx_meth_c_005furl_005f3(_jspx_page_context))
        return;
      out.write("\"></td>\r\n");
      out.write("\t\t\t\t\t<td style=\"line-height: 60px;\">Áo</td>\r\n");
      out.write("\t\t\t\t\t<td style=\"line-height: 60px;\">Nam</td>\r\n");
      out.write("\t\t\t\t\t<td style=\"line-height: 60px;\">220.000</td>\r\n");
      out.write("\t\t\t\t\t<td style=\"line-height: 60px;\">220.000</td>\r\n");
      out.write("\t\t\t\t\t<td style=\"line-height: 60px;\">Hàng mới</td>\r\n");
      out.write("\t\t\t\t\t<td style=\"line-height: 60px;\">35</td>\r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t<td style=\"line-height: 60px;\"><input type=\"checkbox\" name=\"delete\"></td>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t<td style=\"line-height: 60px;\" scope=\"row\">4</td>\r\n");
      out.write("\t\t\t\t\t<td style=\"line-height: 60px;\">Khăn choàng cổ</td>\r\n");
      out.write("\t\t\t\t\t<td><img style=\"width: 60px;height: 60px;\" alt=\"\"\r\n");
      out.write("\t\t\t\t\t\tsrc=\"");
      if (_jspx_meth_c_005furl_005f4(_jspx_page_context))
        return;
      out.write("\"></td>\r\n");
      out.write("\t\t\t\t\t<td style=\"line-height: 60px;\">Phụ kiện</td>\r\n");
      out.write("\t\t\t\t\t<td style=\"line-height: 60px;\">Nữ</td>\r\n");
      out.write("\t\t\t\t\t<td style=\"line-height: 60px;\">100.000</td>\r\n");
      out.write("\t\t\t\t\t<td style=\"line-height: 60px;\">100.000</td>\r\n");
      out.write("\t\t\t\t\t<td style=\"line-height: 60px;\">Hàng mới</td>\r\n");
      out.write("\t\t\t\t\t<td style=\"line-height: 60px;\">45</td>\r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t<td style=\"line-height: 60px;\"><input type=\"checkbox\" name=\"delete\"></td>\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t\t\t\t<td style=\"line-height: 60px;\" scope=\"row\">5</td>\r\n");
      out.write("\t\t\t\t\t<td style=\"line-height: 60px;\">Nón lưỡi trai</td>\r\n");
      out.write("\t\t\t\t\t<td><img style=\"width: 60px;height: 60px;\" alt=\"\"\r\n");
      out.write("\t\t\t\t\t\tsrc=\"");
      if (_jspx_meth_c_005furl_005f5(_jspx_page_context))
        return;
      out.write("\"></td>\r\n");
      out.write("\t\t\t\t\t<td style=\"line-height: 60px;\">Phụ kiện</td>\r\n");
      out.write("\t\t\t\t\t<td style=\"line-height: 60px;\">Nữ</td>\r\n");
      out.write("\t\t\t\t\t<td style=\"line-height: 60px;\">80.000</td>\r\n");
      out.write("\t\t\t\t\t<td style=\"line-height: 60px;\">80.000</td>\r\n");
      out.write("\t\t\t\t\t<td style=\"line-height: 60px;\">Hàng mới</td>\r\n");
      out.write("\t\t\t\t\t<td style=\"line-height: 60px;\">33</td>\r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t<td style=\"line-height: 60px;\"><input type=\"checkbox\" name=\"delete\"></td>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t<td style=\"line-height: 60px;\" scope=\"row\">6</td>\r\n");
      out.write("\t\t\t\t\t<td style=\"line-height: 60px;\">Áo len tay dài</td>\r\n");
      out.write("\t\t\t\t\t<td><img style=\"width: 60px;height: 60px;\" alt=\"\"\r\n");
      out.write("\t\t\t\t\t\tsrc=\"");
      if (_jspx_meth_c_005furl_005f6(_jspx_page_context))
        return;
      out.write("\"></td>\r\n");
      out.write("\t\t\t\t\t<td style=\"line-height: 60px;\">Áo</td>\r\n");
      out.write("\t\t\t\t\t<td style=\"line-height: 60px;\">Nữ</td>\r\n");
      out.write("\t\t\t\t\t<td style=\"line-height: 60px;\">190.000</td>\r\n");
      out.write("\t\t\t\t\t<td style=\"line-height: 60px;\">190.000</td>\r\n");
      out.write("\t\t\t\t\t<td style=\"line-height: 60px;\">Hàng mới</td>\r\n");
      out.write("\t\t\t\t\t<td style=\"line-height: 60px;\">61</td>\r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t<td style=\"line-height: 60px;\"><input type=\"checkbox\" name=\"delete\"></td>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t<td style=\"line-height: 60px;\" scope=\"row\">7</td>\r\n");
      out.write("\t\t\t\t\t<td style=\"line-height: 60px;\">Ba lô</td>\r\n");
      out.write("\t\t\t\t\t<td><img style=\"width: 60px;height: 60px;\" alt=\"\"\r\n");
      out.write("\t\t\t\t\t\tsrc=\"");
      if (_jspx_meth_c_005furl_005f7(_jspx_page_context))
        return;
      out.write("\"></td>\r\n");
      out.write("\t\t\t\t\t<td style=\"line-height: 60px;\">Phụ kiện</td>\r\n");
      out.write("\t\t\t\t\t<td style=\"line-height: 60px;\">Nam</td>\r\n");
      out.write("\t\t\t\t\t<td style=\"line-height: 60px;\">120.000</td>\r\n");
      out.write("\t\t\t\t\t<td style=\"line-height: 60px;\">120.000</td>\r\n");
      out.write("\t\t\t\t\t<td style=\"line-height: 60px;\">Hàng mới</td>\r\n");
      out.write("\t\t\t\t\t<td style=\"line-height: 60px;\">71</td>\r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t<td style=\"line-height: 60px;\"><input type=\"checkbox\" name=\"delete\"></td>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t<td style=\"line-height: 60px;\" scope=\"row\">8</td>\r\n");
      out.write("\t\t\t\t\t<td style=\"line-height: 60px;\">Áo khoác dù</td>\r\n");
      out.write("\t\t\t\t\t<td><img style=\"width: 60px;height: 60px;\" alt=\"\"\r\n");
      out.write("\t\t\t\t\t\tsrc=\"");
      if (_jspx_meth_c_005furl_005f8(_jspx_page_context))
        return;
      out.write("\"></td>\r\n");
      out.write("\t\t\t\t\t<td style=\"line-height: 60px;\">Áo</td>\r\n");
      out.write("\t\t\t\t\t<td style=\"line-height: 60px;\">Nam</td>\r\n");
      out.write("\t\t\t\t\t<td style=\"line-height: 60px;\">250.000</td>\r\n");
      out.write("\t\t\t\t\t<td style=\"line-height: 60px;\">250.000</td>\r\n");
      out.write("\t\t\t\t\t<td style=\"line-height: 60px;\">Hàng mới</td>\r\n");
      out.write("\t\t\t\t\t<td style=\"line-height: 60px;\">78</td>\r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t</tbody>\r\n");
      out.write("\t\t</table>\r\n");
      out.write("\t</div>\r\n");
      out.write("\t<div class=\"btn-control ml-2 mb-2\">\r\n");
      out.write("\t\t<a style=\"color: white; text-decoration: none;\"\r\n");
      out.write("\t\t\thref=\"");
      if (_jspx_meth_c_005furl_005f9(_jspx_page_context))
        return;
      out.write("\"\r\n");
      out.write("\t\t\ttype=\"button\" class=\"btn btn-info\"> Thêm<i\r\n");
      out.write("\t\t\tclass=\"fa fa-plus ml-2\"></i>\r\n");
      out.write("\t\t</a>\r\n");
      out.write("\t</div>\r\n");
      out.write("\r\n");
      out.write("\t<nav aria-label=\"Page navigation example\">\r\n");
      out.write("\t\t<ul class=\"pagination\">\r\n");
      out.write("\t\t\t<li class=\"page-item\"><a class=\"page-link\" href=\"#\">Previous</a></li>\r\n");
      out.write("\t\t\t<li class=\"page-item\"><a class=\"page-link\" href=\"#\">1</a></li>\r\n");
      out.write("\t\t\t<li class=\"page-item\"><a class=\"page-link\" href=\"#\">2</a></li>\r\n");
      out.write("\t\t\t<li class=\"page-item\"><a class=\"page-link\" href=\"#\">3</a></li>\r\n");
      out.write("\t\t\t<li class=\"page-item\"><a class=\"page-link\" href=\"#\">Next</a></li>\r\n");
      out.write("\t\t</ul>\r\n");
      out.write("\t</nav>\r\n");
      out.write("\r\n");
      out.write("\t<ul id=\"pagination-demo\" class=\"pagination-lg\"></ul>\r\n");
      out.write("\r\n");
      out.write("\t<!-- \t<script type=\"text/javascript\">\r\n");
      out.write("\t\t$(document).ready(function() {\r\n");
      out.write("\t\t\t$('#pagination-demo').twbsPagination({\r\n");
      out.write("\t\t\t\ttotalPages : 50,\r\n");
      out.write("\t\t\t\tvisiblePages : 5\r\n");
      out.write("\t\t\t});\r\n");
      out.write("\t\t});\r\n");
      out.write("\t</script> -->\r\n");
      out.write("\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }

  private boolean _jspx_meth_c_005furl_005f0(javax.servlet.jsp.PageContext _jspx_page_context)
          throws java.lang.Throwable {
    javax.servlet.jsp.PageContext pageContext = _jspx_page_context;
    javax.servlet.jsp.JspWriter out = _jspx_page_context.getOut();
    //  c:url
    org.apache.taglibs.standard.tag.rt.core.UrlTag _jspx_th_c_005furl_005f0 = (org.apache.taglibs.standard.tag.rt.core.UrlTag) _005fjspx_005ftagPool_005fc_005furl_0026_005fvalue_005fnobody.get(org.apache.taglibs.standard.tag.rt.core.UrlTag.class);
    boolean _jspx_th_c_005furl_005f0_reused = false;
    try {
      _jspx_th_c_005furl_005f0.setPageContext(_jspx_page_context);
      _jspx_th_c_005furl_005f0.setParent(null);
      // /view/admin/collection/add-product-collection.jsp(20,6) name = value type = null reqTime = true required = false fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
      _jspx_th_c_005furl_005f0.setValue("/template/admin/assets/plugins/jquery/jquery.min.js");
      int _jspx_eval_c_005furl_005f0 = _jspx_th_c_005furl_005f0.doStartTag();
      if (_jspx_th_c_005furl_005f0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
      _005fjspx_005ftagPool_005fc_005furl_0026_005fvalue_005fnobody.reuse(_jspx_th_c_005furl_005f0);
      _jspx_th_c_005furl_005f0_reused = true;
    } finally {
      org.apache.jasper.runtime.JspRuntimeLibrary.releaseTag(_jspx_th_c_005furl_005f0, _jsp_getInstanceManager(), _jspx_th_c_005furl_005f0_reused);
    }
    return false;
  }

  private boolean _jspx_meth_c_005furl_005f1(javax.servlet.jsp.PageContext _jspx_page_context)
          throws java.lang.Throwable {
    javax.servlet.jsp.PageContext pageContext = _jspx_page_context;
    javax.servlet.jsp.JspWriter out = _jspx_page_context.getOut();
    //  c:url
    org.apache.taglibs.standard.tag.rt.core.UrlTag _jspx_th_c_005furl_005f1 = (org.apache.taglibs.standard.tag.rt.core.UrlTag) _005fjspx_005ftagPool_005fc_005furl_0026_005fvalue_005fnobody.get(org.apache.taglibs.standard.tag.rt.core.UrlTag.class);
    boolean _jspx_th_c_005furl_005f1_reused = false;
    try {
      _jspx_th_c_005furl_005f1.setPageContext(_jspx_page_context);
      _jspx_th_c_005furl_005f1.setParent(null);
      // /view/admin/collection/add-product-collection.jsp(97,11) name = value type = null reqTime = true required = false fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
      _jspx_th_c_005furl_005f1.setValue("/template/admin/images/products/product-1.jpg");
      int _jspx_eval_c_005furl_005f1 = _jspx_th_c_005furl_005f1.doStartTag();
      if (_jspx_th_c_005furl_005f1.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
      _005fjspx_005ftagPool_005fc_005furl_0026_005fvalue_005fnobody.reuse(_jspx_th_c_005furl_005f1);
      _jspx_th_c_005furl_005f1_reused = true;
    } finally {
      org.apache.jasper.runtime.JspRuntimeLibrary.releaseTag(_jspx_th_c_005furl_005f1, _jsp_getInstanceManager(), _jspx_th_c_005furl_005f1_reused);
    }
    return false;
  }

  private boolean _jspx_meth_c_005furl_005f2(javax.servlet.jsp.PageContext _jspx_page_context)
          throws java.lang.Throwable {
    javax.servlet.jsp.PageContext pageContext = _jspx_page_context;
    javax.servlet.jsp.JspWriter out = _jspx_page_context.getOut();
    //  c:url
    org.apache.taglibs.standard.tag.rt.core.UrlTag _jspx_th_c_005furl_005f2 = (org.apache.taglibs.standard.tag.rt.core.UrlTag) _005fjspx_005ftagPool_005fc_005furl_0026_005fvalue_005fnobody.get(org.apache.taglibs.standard.tag.rt.core.UrlTag.class);
    boolean _jspx_th_c_005furl_005f2_reused = false;
    try {
      _jspx_th_c_005furl_005f2.setPageContext(_jspx_page_context);
      _jspx_th_c_005furl_005f2.setParent(null);
      // /view/admin/collection/add-product-collection.jsp(111,11) name = value type = null reqTime = true required = false fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
      _jspx_th_c_005furl_005f2.setValue("/template/admin/images/products/product-2.jpg");
      int _jspx_eval_c_005furl_005f2 = _jspx_th_c_005furl_005f2.doStartTag();
      if (_jspx_th_c_005furl_005f2.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
      _005fjspx_005ftagPool_005fc_005furl_0026_005fvalue_005fnobody.reuse(_jspx_th_c_005furl_005f2);
      _jspx_th_c_005furl_005f2_reused = true;
    } finally {
      org.apache.jasper.runtime.JspRuntimeLibrary.releaseTag(_jspx_th_c_005furl_005f2, _jsp_getInstanceManager(), _jspx_th_c_005furl_005f2_reused);
    }
    return false;
  }

  private boolean _jspx_meth_c_005furl_005f3(javax.servlet.jsp.PageContext _jspx_page_context)
          throws java.lang.Throwable {
    javax.servlet.jsp.PageContext pageContext = _jspx_page_context;
    javax.servlet.jsp.JspWriter out = _jspx_page_context.getOut();
    //  c:url
    org.apache.taglibs.standard.tag.rt.core.UrlTag _jspx_th_c_005furl_005f3 = (org.apache.taglibs.standard.tag.rt.core.UrlTag) _005fjspx_005ftagPool_005fc_005furl_0026_005fvalue_005fnobody.get(org.apache.taglibs.standard.tag.rt.core.UrlTag.class);
    boolean _jspx_th_c_005furl_005f3_reused = false;
    try {
      _jspx_th_c_005furl_005f3.setPageContext(_jspx_page_context);
      _jspx_th_c_005furl_005f3.setParent(null);
      // /view/admin/collection/add-product-collection.jsp(125,11) name = value type = null reqTime = true required = false fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
      _jspx_th_c_005furl_005f3.setValue("/template/admin/images/products/product-3.jpg");
      int _jspx_eval_c_005furl_005f3 = _jspx_th_c_005furl_005f3.doStartTag();
      if (_jspx_th_c_005furl_005f3.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
      _005fjspx_005ftagPool_005fc_005furl_0026_005fvalue_005fnobody.reuse(_jspx_th_c_005furl_005f3);
      _jspx_th_c_005furl_005f3_reused = true;
    } finally {
      org.apache.jasper.runtime.JspRuntimeLibrary.releaseTag(_jspx_th_c_005furl_005f3, _jsp_getInstanceManager(), _jspx_th_c_005furl_005f3_reused);
    }
    return false;
  }

  private boolean _jspx_meth_c_005furl_005f4(javax.servlet.jsp.PageContext _jspx_page_context)
          throws java.lang.Throwable {
    javax.servlet.jsp.PageContext pageContext = _jspx_page_context;
    javax.servlet.jsp.JspWriter out = _jspx_page_context.getOut();
    //  c:url
    org.apache.taglibs.standard.tag.rt.core.UrlTag _jspx_th_c_005furl_005f4 = (org.apache.taglibs.standard.tag.rt.core.UrlTag) _005fjspx_005ftagPool_005fc_005furl_0026_005fvalue_005fnobody.get(org.apache.taglibs.standard.tag.rt.core.UrlTag.class);
    boolean _jspx_th_c_005furl_005f4_reused = false;
    try {
      _jspx_th_c_005furl_005f4.setPageContext(_jspx_page_context);
      _jspx_th_c_005furl_005f4.setParent(null);
      // /view/admin/collection/add-product-collection.jsp(139,11) name = value type = null reqTime = true required = false fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
      _jspx_th_c_005furl_005f4.setValue("/template/admin/images/products/product-4.jpg");
      int _jspx_eval_c_005furl_005f4 = _jspx_th_c_005furl_005f4.doStartTag();
      if (_jspx_th_c_005furl_005f4.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
      _005fjspx_005ftagPool_005fc_005furl_0026_005fvalue_005fnobody.reuse(_jspx_th_c_005furl_005f4);
      _jspx_th_c_005furl_005f4_reused = true;
    } finally {
      org.apache.jasper.runtime.JspRuntimeLibrary.releaseTag(_jspx_th_c_005furl_005f4, _jsp_getInstanceManager(), _jspx_th_c_005furl_005f4_reused);
    }
    return false;
  }

  private boolean _jspx_meth_c_005furl_005f5(javax.servlet.jsp.PageContext _jspx_page_context)
          throws java.lang.Throwable {
    javax.servlet.jsp.PageContext pageContext = _jspx_page_context;
    javax.servlet.jsp.JspWriter out = _jspx_page_context.getOut();
    //  c:url
    org.apache.taglibs.standard.tag.rt.core.UrlTag _jspx_th_c_005furl_005f5 = (org.apache.taglibs.standard.tag.rt.core.UrlTag) _005fjspx_005ftagPool_005fc_005furl_0026_005fvalue_005fnobody.get(org.apache.taglibs.standard.tag.rt.core.UrlTag.class);
    boolean _jspx_th_c_005furl_005f5_reused = false;
    try {
      _jspx_th_c_005furl_005f5.setPageContext(_jspx_page_context);
      _jspx_th_c_005furl_005f5.setParent(null);
      // /view/admin/collection/add-product-collection.jsp(153,11) name = value type = null reqTime = true required = false fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
      _jspx_th_c_005furl_005f5.setValue("/template/admin/images/products/product-5.jpg");
      int _jspx_eval_c_005furl_005f5 = _jspx_th_c_005furl_005f5.doStartTag();
      if (_jspx_th_c_005furl_005f5.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
      _005fjspx_005ftagPool_005fc_005furl_0026_005fvalue_005fnobody.reuse(_jspx_th_c_005furl_005f5);
      _jspx_th_c_005furl_005f5_reused = true;
    } finally {
      org.apache.jasper.runtime.JspRuntimeLibrary.releaseTag(_jspx_th_c_005furl_005f5, _jsp_getInstanceManager(), _jspx_th_c_005furl_005f5_reused);
    }
    return false;
  }

  private boolean _jspx_meth_c_005furl_005f6(javax.servlet.jsp.PageContext _jspx_page_context)
          throws java.lang.Throwable {
    javax.servlet.jsp.PageContext pageContext = _jspx_page_context;
    javax.servlet.jsp.JspWriter out = _jspx_page_context.getOut();
    //  c:url
    org.apache.taglibs.standard.tag.rt.core.UrlTag _jspx_th_c_005furl_005f6 = (org.apache.taglibs.standard.tag.rt.core.UrlTag) _005fjspx_005ftagPool_005fc_005furl_0026_005fvalue_005fnobody.get(org.apache.taglibs.standard.tag.rt.core.UrlTag.class);
    boolean _jspx_th_c_005furl_005f6_reused = false;
    try {
      _jspx_th_c_005furl_005f6.setPageContext(_jspx_page_context);
      _jspx_th_c_005furl_005f6.setParent(null);
      // /view/admin/collection/add-product-collection.jsp(167,11) name = value type = null reqTime = true required = false fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
      _jspx_th_c_005furl_005f6.setValue("/template/admin/images/products/product-6.jpg");
      int _jspx_eval_c_005furl_005f6 = _jspx_th_c_005furl_005f6.doStartTag();
      if (_jspx_th_c_005furl_005f6.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
      _005fjspx_005ftagPool_005fc_005furl_0026_005fvalue_005fnobody.reuse(_jspx_th_c_005furl_005f6);
      _jspx_th_c_005furl_005f6_reused = true;
    } finally {
      org.apache.jasper.runtime.JspRuntimeLibrary.releaseTag(_jspx_th_c_005furl_005f6, _jsp_getInstanceManager(), _jspx_th_c_005furl_005f6_reused);
    }
    return false;
  }

  private boolean _jspx_meth_c_005furl_005f7(javax.servlet.jsp.PageContext _jspx_page_context)
          throws java.lang.Throwable {
    javax.servlet.jsp.PageContext pageContext = _jspx_page_context;
    javax.servlet.jsp.JspWriter out = _jspx_page_context.getOut();
    //  c:url
    org.apache.taglibs.standard.tag.rt.core.UrlTag _jspx_th_c_005furl_005f7 = (org.apache.taglibs.standard.tag.rt.core.UrlTag) _005fjspx_005ftagPool_005fc_005furl_0026_005fvalue_005fnobody.get(org.apache.taglibs.standard.tag.rt.core.UrlTag.class);
    boolean _jspx_th_c_005furl_005f7_reused = false;
    try {
      _jspx_th_c_005furl_005f7.setPageContext(_jspx_page_context);
      _jspx_th_c_005furl_005f7.setParent(null);
      // /view/admin/collection/add-product-collection.jsp(181,11) name = value type = null reqTime = true required = false fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
      _jspx_th_c_005furl_005f7.setValue("/template/admin/images/products/product-7.jpg");
      int _jspx_eval_c_005furl_005f7 = _jspx_th_c_005furl_005f7.doStartTag();
      if (_jspx_th_c_005furl_005f7.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
      _005fjspx_005ftagPool_005fc_005furl_0026_005fvalue_005fnobody.reuse(_jspx_th_c_005furl_005f7);
      _jspx_th_c_005furl_005f7_reused = true;
    } finally {
      org.apache.jasper.runtime.JspRuntimeLibrary.releaseTag(_jspx_th_c_005furl_005f7, _jsp_getInstanceManager(), _jspx_th_c_005furl_005f7_reused);
    }
    return false;
  }

  private boolean _jspx_meth_c_005furl_005f8(javax.servlet.jsp.PageContext _jspx_page_context)
          throws java.lang.Throwable {
    javax.servlet.jsp.PageContext pageContext = _jspx_page_context;
    javax.servlet.jsp.JspWriter out = _jspx_page_context.getOut();
    //  c:url
    org.apache.taglibs.standard.tag.rt.core.UrlTag _jspx_th_c_005furl_005f8 = (org.apache.taglibs.standard.tag.rt.core.UrlTag) _005fjspx_005ftagPool_005fc_005furl_0026_005fvalue_005fnobody.get(org.apache.taglibs.standard.tag.rt.core.UrlTag.class);
    boolean _jspx_th_c_005furl_005f8_reused = false;
    try {
      _jspx_th_c_005furl_005f8.setPageContext(_jspx_page_context);
      _jspx_th_c_005furl_005f8.setParent(null);
      // /view/admin/collection/add-product-collection.jsp(195,11) name = value type = null reqTime = true required = false fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
      _jspx_th_c_005furl_005f8.setValue("/template/admin/images/products/product-8.jpg");
      int _jspx_eval_c_005furl_005f8 = _jspx_th_c_005furl_005f8.doStartTag();
      if (_jspx_th_c_005furl_005f8.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
      _005fjspx_005ftagPool_005fc_005furl_0026_005fvalue_005fnobody.reuse(_jspx_th_c_005furl_005f8);
      _jspx_th_c_005furl_005f8_reused = true;
    } finally {
      org.apache.jasper.runtime.JspRuntimeLibrary.releaseTag(_jspx_th_c_005furl_005f8, _jsp_getInstanceManager(), _jspx_th_c_005furl_005f8_reused);
    }
    return false;
  }

  private boolean _jspx_meth_c_005furl_005f9(javax.servlet.jsp.PageContext _jspx_page_context)
          throws java.lang.Throwable {
    javax.servlet.jsp.PageContext pageContext = _jspx_page_context;
    javax.servlet.jsp.JspWriter out = _jspx_page_context.getOut();
    //  c:url
    org.apache.taglibs.standard.tag.rt.core.UrlTag _jspx_th_c_005furl_005f9 = (org.apache.taglibs.standard.tag.rt.core.UrlTag) _005fjspx_005ftagPool_005fc_005furl_0026_005fvalue_005fnobody.get(org.apache.taglibs.standard.tag.rt.core.UrlTag.class);
    boolean _jspx_th_c_005furl_005f9_reused = false;
    try {
      _jspx_th_c_005furl_005f9.setPageContext(_jspx_page_context);
      _jspx_th_c_005furl_005f9.setParent(null);
      // /view/admin/collection/add-product-collection.jsp(210,9) name = value type = null reqTime = true required = false fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
      _jspx_th_c_005furl_005f9.setValue("/view/admin/collection/add-collection.jsp");
      int _jspx_eval_c_005furl_005f9 = _jspx_th_c_005furl_005f9.doStartTag();
      if (_jspx_th_c_005furl_005f9.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
      _005fjspx_005ftagPool_005fc_005furl_0026_005fvalue_005fnobody.reuse(_jspx_th_c_005furl_005f9);
      _jspx_th_c_005furl_005f9_reused = true;
    } finally {
      org.apache.jasper.runtime.JspRuntimeLibrary.releaseTag(_jspx_th_c_005furl_005f9, _jsp_getInstanceManager(), _jspx_th_c_005furl_005f9_reused);
    }
    return false;
  }
}
