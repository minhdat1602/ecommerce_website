<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
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
                    <a href="<c:url value = "/trang-chu"/>"><i class="fa fa-home"></i> Trang chủ</a>
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
            <c:if test="${(not empty CART) and (CART.cartDetailsList.size() != 0)}">
                <div class="col-lg-12">
                    <div class="cart-table">
                        <table>
                            <thead>
                            <tr>
                                <th>Hình</th>
                                <th class="p-name">Tên Sản Phẩm</th>
                                <th>Kích cỡ</th>
                                <th>Màu sắc</th>
                                <th>Giá Sản Phẩm</th>
                                <th>Số Lượng</th>
                                <th>Tổng Tiền</th>
                                    <%--<th><i class="ti-close"></i></th>--%>
                            </tr>
                            </thead>
                            <tbody>
                                <%--Items begin--%>
                            <c:forEach var="details" items="${CART.cartDetailsList}">
                                <tr>
                                    <td class="cart-pic first-row"><img
                                            src="<c:url value="${details.stock.product.imageUrl}"/>"
                                            alt="Ảnh sản phẩm"></td>
                                    <td class="cart-title first-row">
                                        <h5>${details.stock.product.name}</h5>
                                    </td>
                                    <td class="cart-title first-row">${details.stock.size.name}</td>
                                    <td class="cart-title first-row">${details.stock.color.name}</td>
                                    <td class="p-price first-row">
                                        <fmt:formatNumber
                                                pattern="###,###,### VNĐ"
                                                value="${details.stock.product.sellPrice}"/>
                                    </td>
                                    <td class="qua-col first-row">
                                        <div class="quantity">
                                            <div class="pro-qty">
                                                <span class="dec qtybtn">
                                                    <form class="sub" id="sub" action="<c:url value="/gio-hang"/> "
                                                          method="POST">
                                                        <input style="display: none" name="action" value="update">
                                                        <input style="display: none" name="detailCartId"
                                                               value="${details.id}">
                                                        <input style="display: none" name="method" value="sub">
                                                        <button style="border: none; outline: none; background-color: #ffffff;"
                                                                id="subBtn" type="submit" class="dec qtybtn">-</button>
                                                    </form>
                                                </span>
                                                <input type="text" value="${details.quantity}">
                                                <span class="inc qtybtn">
                                                    <form class="plus" id="plus" action="<c:url value="/gio-hang"/> "
                                                          method="POST">
                                                        <input style="display: none" name="action" value="update">
                                                        <input style="display: none" name="detailCartId"
                                                               value="${details.id}">
                                                        <input style="display: none" name="method" value="plus">
                                                        <button style="border: none; outline: none; background-color: #ffffff;"
                                                                id="plusBtn" type="submit" class="inc qtybtn">+</button>
                                                    </form>
                                                </span>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="total-price first-row">
                                        <fmt:formatNumber
                                                pattern="###,###,### VNĐ"
                                                value="${details.stock.product.sellPrice * details.quantity}"/>
                                    </td>
                                    <td class="close-td first-row">
                                        <form action="<c:url value="/gio-hang"/>" method="POST">
                                            <input style="display: none" name="action" value="delete">
                                            <input style="display: none" name="detailCartId"
                                                   value="${details.id}">
                                            <button type="submit" style="outline: none; border: none;background-color: #fff;">
                                                <i class="ti-close"></i>
                                            </button>
                                        </form>
                                    </td>
                                </tr>
                            </c:forEach>
                            </tbody>
                        </table>
                    </div>
                    <div class="row">
                        <div class="col-lg-4">
                            <div class="cart-buttons">
                                <a href="<c:url value="/trang-chu"/> "
                                   class="primary-btn continue-shop">Tiếp Tục Mua Sắm</a>

                            </div>
                            <%--<div class="discount-coupon">
                                <h6>Mã Giảm Gía</h6>
                                <form action="#" class="coupon-form">
                                    <input type="text" placeholder="Nhập mã code">
                                    <button type="submit" class="site-btn coupon-btn">Áp dụng</button>
                                </form>
                            </div>--%>
                        </div>
                        <div class="col-lg-4 offset-lg-4">
                            <div class="proceed-checkout">
                                <ul>
                                        <%--<li class="subtotal"> Tổng<span>590.000đ</span></li>--%>
                                    <li class="cart-total">Tổng giá
                                        <span>
                                         <fmt:formatNumber
                                                 pattern="###,###,### VNĐ"
                                                 value="${CART.totalPrice()}"/>
                                    </span>
                                    </li>
                                </ul>
                                <a href="#" class="proceed-btn">THANH TOÁN</a>
                            </div>
                        </div>
                    </div>
                </div>
            </c:if>
            <c:if test="${(empty CART) or (CART.cartDetailsList.size() == 0)}">
                <h2>
                    KHÔNG CÓ SẢN PHẨM NÀO TRONG GIỎ HÀNG.
                </h2>
            </c:if>
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
<script>
    $(document).ready(function () {
        $("#subBtn").click(function () {
            $("#sub").submit();
        })
    })
</script>
<!-- Partner Logo Section End -->
</body>
</html>