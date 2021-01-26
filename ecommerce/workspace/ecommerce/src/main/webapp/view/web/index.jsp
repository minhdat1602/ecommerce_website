<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@page import="com.ecommerce.utils.PriceUtils" %>
<%@ include file="/common/taglib.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Trang chủ</title>
</head>
<body>
<input id="flag-index" type="hidden" value=".index-page">
<!-- Hero Section Begin -->
<section class="hero-section">
    <div class="hero-items owl-carousel">
        <c:forEach items="${listPromotion}" var="promotion">
            <div class="single-hero-items set-bg"
                 data-setbg="<c:url value="/template/img/sale/${promotion.imageUrl}"/>">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-5">
                            <span>${promotion.header}</span>
                            <h1 class="text-left">${promotion.name}</h1>
                            <p>${promotion.descriptions}</p>
                            <a href="/sale?${promotion.id}" class="primary-btn">Mua sắm
                                ngay</a>
                        </div>
                    </div>
                    <div class="off-card">
                        <h2>
                            Sale <span>${promotion.value}%</span>
                        </h2>
                    </div>
                </div>
            </div>
        </c:forEach>
    </div>
</section>
<!-- Hero Section End -->

<!-- Banner Section Begin -->
<div class="banner-section spad">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-4">
                <div class="single-banner">
                    <img src="<c:url value="/template/img/banner-1.jpg"/>" alt="">
                    <div class="inner-text">
                        <h4>Nam</h4>
                    </div>
                </div>
            </div>
            <div class="col-lg-4">
                <div class="single-banner">
                    <img src="<c:url value="/template/img/banner-2.jpg"/>" alt="">
                    <div class="inner-text">
                        <h4>Nữ</h4>
                    </div>
                </div>
            </div>
            <div class="col-lg-4">
                <div class="single-banner">
                    <img src="<c:url value="/template/img/banner-3.jpg"/>" alt="">
                    <div class="inner-text">
                        <h4>Trẻ Em</h4>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Banner Section End -->

<!-- Women Banner Section Begin -->
<section class="women-banner spad">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-3">
                <div class="product-large set-bg"
                     data-setbg="<c:url value="/template/img/products/women-large.jpg"/>">
                    <h2>Thời Trang Nữ</h2>
                    <a href="<c:url value="/cuahang?groupNameStr=Nữ"/>">Xem Ngay</a>
                </div>
            </div>
            <div class="col-lg-8 offset-lg-1">
                <div class="filter-control">
                    <ul>
                        <c:forEach items="${groupWomen}" var="wo">
                            <%--<a href="<c:url value="/trang-chu?men=${men}&&women=${wo.name}"/> "
                               style="padding-right: 30px;">--%>
                                <li  <c:if test="${wo.name eq 'Áo nữ'}">
                                    class = "active" </c:if>>
                                        ${wo.name}
                                </li>
                            <%--</a>--%>
                        </c:forEach>
                    </ul>
                </div>
                <div class="product-slider owl-carousel">
                    <c:forEach items="${listAoNu}" var="aonu">
                        <div class="product-item">
                            <a href="<c:url value="/sanpham?id=${aonu.id}"/>">
                                <div class="pi-pic">
                                    <img src="${aonu.imageUrl}" alt="product picture">
                                    <c:if test="${aonu.originPrice - aonu.sellPrice > 0}">
                                        <div class="sale">SALE</div>
                                    </c:if>
                                    <div class="icon">
                                        <i class="icon_heart_alt"></i>
                                    </div>
                                </div>
                                <div class="pi-text">
                                    <div class="catagory-name">${aonu.groupProduct}</div>
                                    <a>
                                        <h5>${aonu.name}</h5>
                                    </a>
                                    <div class="product-price">
                                        <c:if test="${aonu.sellPrice < aonu.originPrice}">
                                            ${PriceUtils.convert(aonu.sellPrice)} đ<span>${PriceUtils.convert(aonu.originPrice)}đ</span>
                                        </c:if>
                                        <c:if test="${aonu.sellPrice >= aonu.originPrice}">
                                            ${PriceUtils.convert(aonu.sellPrice)} đ
                                        </c:if>
                                    </div>
                                </div>
                            </a>
                        </div>
                    </c:forEach>
                </div>

            </div>
        </div>
    </div>
</section>
<!-- Women Banner Section End -->


<!-- Man Banner Section Begin -->
<section class="man-banner spad">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-8">
                <div class="filter-control">
                    <ul>
                        <c:forEach items="${groupMen}" var="m">
                            <%--<a href="<c:url value="/trang-chu?men=${m.name}&&women=${women}"/> "
                               style="padding-left: 30px;">--%>
                                <li data-group="${m.name}" id="${m.id}" <c:if test="${m.name eq 'Áo nam'}">
                                    class = "active" </c:if>>
                                        ${m.name}
                                </li>
                           <%-- </a>--%>
                        </c:forEach>
                    </ul>
                </div>
                <div id="Áo nam" class="product-slider owl-carousel">
                    <c:forEach begin="0" end="5" items="${listAoNam}" var="aonam">
                        <div class="product-item">
                            <a href="<c:url value="/sanpham?id=${aonam.id}"/>"
                               style="padding-left: 20px;">
                                <div class="pi-pic">
                                    <img
                                            src="${aonam.imageUrl}"
                                            alt="product picture">

                                    <c:if test="${aonam.originPrice - aonam.sellPrice > 0}">
                                        <div class="sale">SALE</div>
                                    </c:if>

                                    <div class="icon">
                                        <i class="icon_heart_alt"></i>
                                    </div>
                                </div>
                                <div class="pi-text">
                                    <div class="catagory-name">${aonam.groupProduct}</div>
                                    <a>
                                        <h5>${aonam.name}</h5>
                                    </a>
                                    <div class="product-price">
                                        <c:if test="${aonam.sellPrice < aonam.originPrice}">
                                            ${PriceUtils.convert(aonam.sellPrice)}
                                            <span>${PriceUtils.convert(aonam.originPrice)}</span>
                                        </c:if>
                                        <c:if test="${aonam.sellPrice >= aonam.originPrice}">
                                            ${PriceUtils.convert(aonam.sellPrice)}
                                        </c:if>
                                    </div>
                                </div>
                            </a>
                        </div>
                    </c:forEach>
                </div>

                <div id="Quần nam" class="product-slider owl-carousel" type="hidden">
                <c:forEach begin="0" end="5" items="${listQuanNam}" var="quannam">
                    <div class="product-item">
                        <a href="<c:url value="/sanpham?id=${quannam.id}"/>"
                           style="padding-left: 20px;">
                            <div class="pi-pic">
                                <img
                                        src="${quannam.imageUrl}"
                                        alt="product picture">

                                <c:if test="${quannam.originPrice - quannam.sellPrice > 0}">
                                    <div class="sale">SALE</div>
                                </c:if>

                                <div class="icon">
                                    <i class="icon_heart_alt"></i>
                                </div>
                            </div>
                            <div class="pi-text">
                                <div class="catagory-name">${quannam.groupProduct}</div>
                                <a>
                                    <h5>${quannam.name}</h5>
                                </a>
                                <div class="product-price">
                                    <c:if test="${quannam.sellPrice < quannam.originPrice}">
                                        ${PriceUtils.convert(quannam.sellPrice)}
                                        <span>${PriceUtils.convert(quannam.originPrice)}</span>
                                    </c:if>
                                    <c:if test="${quannam.sellPrice >= quannam.originPrice}">
                                        ${PriceUtils.convert(quannam.sellPrice)}
                                    </c:if>
                                </div>
                            </div>
                        </a>
                    </div>
                </c:forEach>
            </div>

            <div id="Phụ kiện nam" class="product-slider owl-carousel" style="display: none;">
            <c:forEach begin="0" end="5" items="${listPKNam}" var="phukiennam">
                <div class="product-item">
                    <a href="<c:url value="/sanpham?id=${phukiennam.id}"/>"
                       style="padding-left: 20px;">
                        <div class="pi-pic">
                            <img
                                    src="${phukiennam.imageUrl}"
                                    alt="product picture">

                            <c:if test="${phukiennam.originPrice - phukiennam.sellPrice > 0}">
                                <div class="sale">SALE</div>
                            </c:if>

                            <div class="icon">
                                <i class="icon_heart_alt"></i>
                            </div>
                        </div>
                        <div class="pi-text">
                            <div class="catagory-name">${phukiennam.groupProduct}</div>
                            <a>
                                <h5>${phukiennam.name}</h5>
                            </a>
                            <div class="product-price">
                                <c:if test="${phukiennam.sellPrice < phukiennam.originPrice}">
                                    ${PriceUtils.convert(phukiennam.sellPrice)}
                                    <span>${PriceUtils.convert(phukiennam.originPrice)}</span>
                                </c:if>
                                <c:if test="${phukiennam.sellPrice >= phukiennam.originPrice}">
                                    ${PriceUtils.convert(phukiennam.sellPrice)}
                                </c:if>
                            </div>
                        </div>
                    </a>
                </div>
            </c:forEach>
        </div>

            </div>
            <div class="col-lg-3 offset-lg-1">
                <div class="product-large set-bg m-large"
                     data-setbg="<c:url value="/template/img/products/man-large.jpg"/>">
                    <h2>Thời Trang Nam</h2>
                    <a href="<c:url value="/cuahang?groupNameStr=Nam"/>">Xem Ngay</a>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Man Banner Section End -->


<!-- Instagram Section Begin -->
<div class="instagram-photo">

    <div class="insta-item set-bg"
         data-setbg="<c:url value="/template/img/insta-1.jpg"/>">

        <div class="inside-text">
            <i class="ti-instagram"></i>
            <h5>
                <a href="#">Bộ sưu tập</a>
            </h5>
        </div>
    </div>
    <div class="insta-item set-bg"
         data-setbg="<c:url value="/template/img/insta-2.jpg"/>">
        <div class="inside-text">
            <i class="ti-instagram"></i>
            <h5>
                <a href="#">Bộ sưu tập</a>
            </h5>
        </div>
    </div>
    <div class="insta-item set-bg"
         data-setbg="<c:url value="/template/img/insta-3.jpg"/>">
        <div class="inside-text">
            <i class="ti-instagram"></i>
            <h5>
                <a href="#">Bộ sưu tập</a>
            </h5>
        </div>
    </div>
    <div class="insta-item set-bg"
         data-setbg="<c:url value="/template/img/insta-4.jpg"/>">
        <div class="inside-text">
            <i class="ti-instagram"></i>
            <h5>
                <a href="#">Bộ sưu tập</a>
            </h5>
        </div>
    </div>
    <div class="insta-item set-bg"
         data-setbg="<c:url value="/template/img/insta-5.jpg"/>">
        <div class="inside-text">
            <i class="ti-instagram"></i>
            <h5>
                <a href="#">Bộ sưu tập</a>
            </h5>
        </div>
    </div>
    <div class="insta-item set-bg"
         data-setbg="<c:url value="/template/img/insta-6.jpg"/>">
        <div class="inside-text">
            <i class="ti-instagram"></i>
            <h5>
                <a href="#">Bộ sưu tập</a>
            </h5>
        </div>
    </div>
</div>
<!-- Instagram Section End -->
</body>
<script>
</script>
</html>