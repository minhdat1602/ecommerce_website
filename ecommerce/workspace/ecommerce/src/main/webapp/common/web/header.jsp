<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ include file="/common/taglib.jsp" %>


<!-- Header Section Begin -->
<header class="header-section">
    <div class="header-top">
        <div class="container">
            <div class="ht-left">
                <div class="mail-service">
                    <i class=" fa fa-envelope"></i>
                    fashi@gmail.com
                </div>
                <div class="phone-service">
                    <i class=" fa fa-phone"></i>
                    +84 123456789
                </div>
            </div>
            <div class="ht-right">
                <c:if test="${empty USERMODEL}">
                    <a href="<c:url value = "/dang-ky"/>" class="register-panel">Đăng ký</a>
                    <a style="padding-right: 20px" href="<c:url value = "/dang-nhap"/>" class="register-panel">Đăng
                        nhập</a>
                </c:if>
                <c:if test="${not empty USERMODEL}">
                    <a style="width: 170px" href="<c:url value = "/capnhat?page=info"/>" class="login-panel">
                        <i class="fa fa-user"></i>
                        Xin chào: ${USERMODEL.lastName}</a>
                    <ul class="dropdown" id="userOption">
                        <li><a href="<c:url value = "/capnhat?page=info"/>">Đổi thông tin</a></li>
                        <li><a href="<c:url value = "/view/web/list-order.jsp"/>">Đơn hàng</a></li>
                        <li>
                            <a href="<c:url value="/dang-nhap?action=logout"/>   ">Đăng xuất</a>
                        </li>
                    </ul>
                </c:if>
                <div class="lan-selector">
                    <select class="language_drop" name="countries" id="countries" style="width:300px;">
                        <option value='yt' data-image="<c:url value="/template/img/flag-1.jpg"/>"
                                data-imagecss="flag yt"
                                data-title="Việt Nam">VietNam
                        </option>
                        <option value='yu' data-image="<c:url value="/template/img/flag-2.jpg"/>"
                                data-imagecss="flag yu"
                                data-title="English">English
                        </option>
                    </select>
                </div>
                <div class="top-social">
                    <a href="#"><i class="ti-facebook"></i></a>
                    <a href="#"><i class="ti-twitter-alt"></i></a>
                    <a href="#"><i class="ti-linkedin"></i></a>
                    <a href="#"><i class="ti-pinterest"></i></a>
                </div>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="inner-header">
            <div class="row">
                <div class="col-lg-2 col-md-2">
                    <div class="logo">
                        <a href="<c:url value = "/trang-chu"/>">
                            <img src="<c:url value="/template/img/logo.png "/>" alt="">
                        </a>
                    </div>
                </div>
                <div class="col-lg-7 col-md-7">
                    <div class="advanced-search">
                        <button type="button" class="category-btn">Tìm kiếm</button>
                        <div class="input-group">
                            <input id="search-" type="text" placeholder="" style="color: black;">
                            <a style="color: black;" href="<c:url value = "/view/web/search.jsp"/>">
                                <button type="button"><i class="ti-search"></i></button>
                            </a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 text-right col-md-3">
                    <ul class="nav-right">
                        <li class="heart-icon">
                            <a href="<c:url value = "/view/web/favorite-products.jsp"/>">
                                <i class="icon_heart_alt"></i>
                                <span>3</span>
                            </a>
                        </li>
                        <li class="cart-icon">
                            <a href="<c:url value = "/gio-hang"/>">
                                <i class="icon_bag_alt"></i>
                                <span>
                                    <c:if test="${(empty CART) or (CART.cartDetailsList.size() == 0)}">
                                        0
                                    </c:if>
                                    <c:if test="${(not empty CART) and (CART.cartDetailsList.size() != 0)}">
                                        ${CART.cartDetailsList.size()}
                                    </c:if>
                                </span>
                            </a>
                            <c:if test="${(not empty CART) and (CART.cartDetailsList.size() != 0)}">
                                <div class="cart-hover">
                                    <div class="select-items">
                                        <table>
                                            <tbody>
                                            <c:forEach items="${CART.cartDetailsList}" var="details">
                                                <tr>
                                                    <td class="si-pic"><img
                                                            src="<c:url value="${details.stock.product.imageUrl}"/>"
                                                            alt="Picture"></td>
                                                    <td class="si-text">
                                                        <div class="product-selected">
                                                            <p><fmt:formatNumber
                                                                    pattern="###,###,###"
                                                                    value="${details.stock.product.sellPrice}"/>
                                                                x ${details.quantity}</p>
                                                            <h6>${details.stock.product.name}</h6>
                                                        </div>
                                                    </td>
                                                    <td class="si-close">
                                                        <form action="<c:url value="/gio-hang"/>" method="POST">
                                                            <input style="display: none" name="action" value="delete">
                                                            <input style="display: none" name="detailCartId"
                                                                   value="${details.id}">
                                                            <button style="background-color: #fff;
                                                            outline: none; border: none;"
                                                                    type="submit">
                                                                <i class="ti-close"></i>
                                                            </button>
                                                        </form>
                                                    </td>
                                                </tr>
                                            </c:forEach>
                                                <%--<tr>
                                                    <td class="si-pic"><img src="<c:url value="/template/img/select-product-2.jpg"/>" alt=""></td>
                                                    <td class="si-text">
                                                        <div class="product-selected">
                                                            <p>260.000đ x 1</p>
                                                            <h6>Áo Len 2020</h6>
                                                        </div>
                                                    </td>
                                                    <td class="si-close">
                                                        <i class="ti-close"></i>
                                                    </td>
                                                </tr>--%>
                                            </tbody>
                                        </table>
                                    </div>
                                    <div class="select-total">
                                        <span>Tổng:</span>
                                        <h5>
                                            <fmt:formatNumber
                                                    pattern="###,###,### VNĐ"
                                                    value="${CART.totalPrice()}"/>
                                        </h5>
                                    </div>
                                    <div class="select-button">
                                        <a href="<c:url value="/gio-hang"/>" class="primary-btn view-card">Giỏ hàng</a>
                                        <a href="#" class="primary-btn checkout-btn">Thanh toán</a>
                                    </div>
                                </div>
                            </c:if>
                        </li>
                        <c:if test="${(CART.cartDetailsList.size() != 0) || (empty CART)}">
                            <li class="cart-price">
                                <fmt:formatNumber
                                        pattern="###,###,### VNĐ"
                                        value="${CART.totalPrice()}"/>
                            </li>
                        </c:if>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <div class="nav-item">
        <div class="container">
            <div class="nav-depart">
                <div class="depart-btn">
                    <i class="ti-menu"></i>
                    <span>TẤT CẢ SẢN PHẨM</span>
                    <ul class="depart-hover">
                        <li class="active"><a href="#">Quần Áo Nam</a></li>
                        <li><a href="#">Quần Áo Nữ</a></li>
                        <li><a href="#">Quần Áo Trẻ Em</a></li>
                        <li><a href="#">Phụ Kiện</a></li>

                    </ul>
                </div>
            </div>
            <nav class="nav-menu mobile-menu">
                <ul>
                    <li class="index-page"><a href="<c:url value = "/trang-chu"/>">Trang Chủ</a></li>
                    <li class="shop-page"><a href="<c:url value = "/shop"/>">Shop</a></li>
                    <li class="collection-page"><a href="<c:url value = "/collection"/>">Bộ Sưu Tập</a>
                        <ul class="dropdown">
                            <li class="collection-page"><a href="<c:url value = "/view/web/collection-details.jsp"/>">Thu
                                Đông</a></li>
                            <li class="collection-page"><a href="<c:url value = "/view/web/collection-details.jsp"/>">Mùa
                                Hè</a></li>
                        </ul>
                    </li>
                    <li class="sale-page"><a href="<c:url value = "/sale"/>">SALE</a>
                        <ul class="dropdown">
                            <li class="sale-page"><a href="<c:url value = "/view/web/sale-details.jsp"/>">Black
                                Friday</a></li>
                            <li class="sale-page"><a href="<c:url value = "/view/web/sale-details.jsp"/>">Deal of
                                week</a></li>
                        </ul>
                    </li>
                    <li class="contact-page"><a href="<c:url value = "/view/web/contact.jsp"/>">Liên Hệ</a></li>
                    <li class="pages"><a>Trang</a>
                        <ul class="dropdown">
                            <li class="pages"><a href="<c:url value = "/view/web/faq.jsp"/>">Câu hỏi</a></li>
                            <li class="pages"><a href="<c:url value = "/view/web/about.jsp"/>">Giới thiệu</a></li>
                            <li class="pages"><a href="<c:url value = "/view/web/feedback.jsp"/>">Góp ý</a></li>
                        </ul>
                    </li>
                </ul>
            </nav>
            <div id="mobile-menu-wrap"></div>
        </div>
    </div>
</header>
<!-- Header End -->