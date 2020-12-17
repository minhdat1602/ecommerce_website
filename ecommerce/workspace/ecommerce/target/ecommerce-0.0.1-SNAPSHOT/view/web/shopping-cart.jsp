<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
       <%@ include file="/common/taglib.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Giỏ hàng</title>
</head>
<body>
<!-- Breadcrumb Section Begin -->
<div class="breacrumb-section">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="breadcrumb-text">
                    <a href = "<c:url value = "/view/web/index.jsp"/>"><i class="fa fa-home"></i> Trang chủ</a>
                    <span>Giỏ hàng</span>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Breadcrumb Section End -->


<!-- Shopping Cart Section Begin -->
<section class="shopping-cart spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="cart-table">
                    <table>
                        <thead>
                        <tr>
                            <th>Hình</th>
                            <th class="p-name">Tên Sản Phẩm</th>
                            <th>Giá Sản Phẩm </th>
                            <th>Số Lượng</th>
                            <th>Tổng Tiền</th>
                            <th><i class="ti-close"></i></th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td class="cart-pic first-row"><img src="<c:url value="/template/web/img/cart-page/product-1.jpg"/>" alt=""></td>
                            <td class="cart-title first-row">
                                <h5>Áo kaki</h5>
                            </td>
                            <td class="p-price first-row">160.000 đ</td>
                            <td class="qua-col first-row">
                                <div class="quantity">
                                    <div class="pro-qty">
                                        <input type="text" value="1">
                                    </div>
                                </div>
                            </td>
                            <td class="total-price first-row">160.000 đ</td>
                            <td class="close-td first-row"><i class="ti-close"></i></td>
                        </tr>
                        <tr>
                            <td class="cart-pic"><img src="<c:url value="/template/web/img/cart-page/product-2.jpg"/>" alt=""></td>
                            <td class="cart-title">
                                <h5>Áo len tay dài</h5>
                            </td>
                            <td class="p-price">260.000 đ</td>
                            <td class="qua-col">
                                <div class="quantity">
                                    <div class="pro-qty">
                                        <input type="text" value="1">
                                    </div>
                                </div>
                            </td>
                            <td class="total-price">260.000 đ</td>
                            <td class="close-td"><i class="ti-close"></i></td>
                        </tr>
                        <tr>
                            <td class="cart-pic"><img src="<c:url value="/template/web/img/cart-page/product-3.jpg"/>" alt=""></td>
                            <td class="cart-title">
                                <h5>Áo sweater</h5>
                            </td>
                            <td class="p-price">170.000 đ</td>
                            <td class="qua-col">
                                <div class="quantity">
                                    <div class="pro-qty">
                                        <input type="text" value="1">
                                    </div>
                                </div>
                            </td>
                            <td class="total-price">170.000đ</td>
                            <td class="close-td"><i class="ti-close"></i></td>
                        </tr>
                        </tbody>
                    </table>
                </div>
                <div class="row">
                    <div class="col-lg-4">
                        <div class="cart-buttons">
                            <a href="./shop.html" class="primary-btn continue-shop">Tiếp Tục Mua Sắm</a>
                
                        </div>
                        <div class="discount-coupon">
                            <h6>Mã Giảm Gía</h6>
                            <form action="#" class="coupon-form">
                                <input type="text" placeholder="Nhập mã code">
                                <button type="submit" class="site-btn coupon-btn">Áp dụng</button>
                            </form>
                        </div>
                    </div>
                    <div class="col-lg-4 offset-lg-4">
                        <div class="proceed-checkout">
                            <ul>
                                <li class="subtotal"> Tổng<span>590.000đ</span></li>
                                <li class="cart-total">Thành Tiền <span>590.000đ</span></li>
                            </ul>
                            <a href="#" class="proceed-btn">THANH TOÁN</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Shopping Cart Section End -->

<!-- Partner Logo Section Begin -->
<div class="partner-logo">
    <div class="container">
        <div class="logo-carousel owl-carousel">
            <div class="logo-item">
                <div class="tablecell-inner">
                    <img src="<c:url value="/template/web/img/logo-carousel/logo-1.png"/>" alt="">
                </div>
            </div>
            <div class="logo-item">
                <div class="tablecell-inner">
                    <img src="<c:url value="/template/web/img/logo-carousel/logo-2.png"/>" alt="">
                </div>
            </div>
            <div class="logo-item">
                <div class="tablecell-inner">
                    <img src="<c:url value="/template/web/img/logo-carousel/logo-3.png"/>" alt="">
                </div>
            </div>
            <div class="logo-item">
                <div class="tablecell-inner">
                    <img src="<c:url value="/template/web/img/logo-carousel/logo-4.png"/>" alt="">
                </div>
            </div>
            <div class="logo-item">
                <div class="tablecell-inner">
                    <img src="<c:url value="/template/web/img/logo-carousel/logo-5.png"/>" alt="">
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Partner Logo Section End -->

<!-- Partner Logo Section Begin -->
<div class="partner-logo">
    <div class="container">
        <div class="logo-carousel owl-carousel">
            <div class="logo-item">
                <div class="tablecell-inner">
                    <img src="<c:url value="/template/web/img/logo-carousel/logo-1.png"/>" alt="">
                </div>
            </div>
            <div class="logo-item">
                <div class="tablecell-inner">
                    <img src="<c:url value="/template/web/img/logo-carousel/logo-2.png"/>" alt="">
                </div>
            </div>
            <div class="logo-item">
                <div class="tablecell-inner">
                    <img src="<c:url value="/template/web/img/logo-carousel/logo-3.png"/>" alt="">
                </div>
            </div>
            <div class="logo-item">
                <div class="tablecell-inner">
                    <img src="<c:url value="/template/web/img/logo-carousel/logo-4.png"/>" alt="">
                </div>
            </div>
            <div class="logo-item">
                <div class="tablecell-inner">
                    <img src="<c:url value="/template/web/img/logo-carousel/logo-5.png"/>" alt="">
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Partner Logo Section End -->
</body>
</html>