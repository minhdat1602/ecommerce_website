<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ include file="/common/taglib.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Thanh toán</title>
</head>
<body>
	<!-- Breadcrumb Section Begin -->
<div class="breacrumb-section">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="breadcrumb-text product-more">
                    <a href = "<c:url value = "/view/web/index.jsp"/>"><i class="fa fa-home"></i> Trang Chủ</a>
                   
                    <a href = "<c:url value = "/view/web/shop.jsp"/>">Shop</a>
                    <span>Thanh Toán</span>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Breadcrumb Section Begin -->

<!-- Shopping Cart Section Begin -->
<section class="checkout-section spad">
    <div class="container">
        <form action="#" class="checkout-form">
            <div class="row">
                <div class="col-lg-6">
                    <div class="checkout-content">
                        <a href = "<c:url value = "/view/web/login.html"/>" class="content-btn">Nhấn vào đây để đăng nhập</a>
                    </div>
                    <h4>Thông Tin Thanh Toán</h4>
                    <div class="row">
                        <div class="col-lg-6">
                            <label for="fir">Tên<span>*</span></label>
                            <input type="text" id="fir">
                        </div>
                        <div class="col-lg-12">
                            <label for="street">Địa chỉ nhận hàng<span>*</span></label>
                            <input type="text" id="street" class="street-first">
                   
                        </div>
                        <div class="col-lg-6">
                            <label for="email">Email<span>*</span></label>
                            <input type="text" id="email">
                        </div>
                        <div class="col-lg-6">
                            <label for="phone">Số điện thoại<span>*</span></label>
                            <input type="text" id="phone">
                        </div>
                        <div class="col-lg-12">
                            <div class="create-item">
                                <label for="acc-create">
                                    <a href = "<c:url value = "/view/web/register.jsp"/>"
                                     class="btn btn-primary">Tạo tài khoản ?</a>
                                </label>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="checkout-content">
                        <input type="text" placeholder="Nhập mã phiếu giảm giá">
                    </div>
                    <div class="place-order">
                        <h4>Đơn Hàng Của Bạn</h4>
                        <div class="order-total">
                            <ul class="order-table">
                                <li>Sản Phẩm <span>Tiền</span></li>
                                <li class="fw-normal">Áo thun x 1 <span>110.000đ</span></li>
                                <li class="fw-normal">Quần tây x 1 <span>220.000đ</span></li>
                                <li class="fw-normal">Tổng tiền <span>330.000đ</span></li>
                                <li class="total-price">Tổng Cộng<span>330.000đ</span></li>
                            </ul>
                            <div class="payment-check">
                                <div class="pc-item">
                                    <label for="pc-check">
                                        Thanh toán khi nhận hàng
                                        <input type="checkbox" id="pc-check">
                                        <span class="checkmark"></span>
                                    </label>
                                </div>
                                <div class="pc-item">
                                    <label for="pc-paypal">
                                        Thanh toán Paypal
                                        <input type="checkbox" id="pc-paypal">
                                        <span class="checkmark"></span>
                                    </label>
                                </div>
                            </div>
                            <div class="order-btn">
                                <button type="submit" class="site-btn place-btn">Đặt Hàng</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </div>
</section>
<!-- Shopping Cart Section End -->
</body>
</html>