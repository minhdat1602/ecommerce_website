<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
        <div class="single-hero-items set-bg" data-setbg="<c:url value="/template/web/img/hero-1.jpg"/>">
            <div class="container">
                <div class="row">
                    <div class="col-lg-5">
                        <span>SỰ KIỆN HOT NHẤT TRONG NĂM</span>
                        <h1 class="text-left">Black friday</h1>
                        <p>Ngày hội mua sắm, mua hàng thả ga cùng Fashi, giảm giá 50% tất cả các mặt hàng</p>
                        <a href="./sale-details.html" class="primary-btn">Mua sắm ngay</a>
                    </div>
                </div>
                <div class="off-card">
                    <h2>Sale <span>50%</span></h2>
                </div>
            </div>
        </div>
        <div class="single-hero-items set-bg" data-setbg="<c:url value="/template/web/img/time-bg.jpg"/>">
            <div class="container">
                <div class="row">
                    <div class="col-lg-5">
                        <span>SĂN DEAL HÀNG TUẦN CÙNG FASHI</span>
                        <h1 class="text-left">Deal Of Week</h1>
                        <p>Cùng săn deal chất mỗi tuần cùng Fashi. Giảm 70% đối với sản phẩm tuần này</p>
                        <a href="./sale-details.html" class="primary-btn">Mua sắm ngay</a>
                    </div>
                </div>
                <div class="off-card">
                    <h2>Sale <span>70%</span></h2>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Hero Section End -->

<!-- Banner Section Begin -->
<div class="banner-section spad">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-4">
                <div class="single-banner">
                    <img src="<c:url value="/template/web/img/banner-1.jpg"/>" alt="">
                    <div class="inner-text">
                        <h4>Nam</h4>
                    </div>
                </div>
            </div>
            <div class="col-lg-4">
                <div class="single-banner">
                    <img src="<c:url value="/template/web/img/banner-2.jpg"/>" alt="">
                    <div class="inner-text">
                        <h4>Nữ</h4>
                    </div>
                </div>
            </div>
            <div class="col-lg-4">
                <div class="single-banner">
                    <img src="<c:url value="/template/web/img/banner-3.jpg"/>" alt="">
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
                <div class="product-large set-bg" data-setbg="<c:url value="/template/web/img/products/women-large.jpg"/>">
                    <h2>Thời Trang Nữ</h2>
                    <a href="#">Xem Ngay</a>
                </div>
            </div>
            <div class="col-lg-8 offset-lg-1">
                <div class="filter-control">
                    <ul>
                        <li class="active">Quần Áo</li>
                        <li>Túi Sách</li>
                        <li>Giày</li>
                        <li>Phụ Kiện</li>
                    </ul>
                </div>
                <div class="product-slider owl-carousel">
                    <div class="product-item">
                        <a href="<c:url value="/view/web/product-details.jsp"/>">
                            <div class="pi-pic">
                                <img src="<c:url value="/template/web/img/products/women-1.jpg"/>" alt="">
                                <div class="sale">Sale</div>
                                <div class="icon">
                                    <i class="icon_heart_alt"></i>
                                </div>
                                <ul>
                                    <li class="w-icon active"><a href="#"><i class="icon_bag_alt"></i></a></li>
                                    <li class="quick-view"><a href="#">+ Quick View</a></li>
                                    <li class="w-icon"><a href="#"><i class="fa fa-random"></i></a></li>
                                </ul>
                            </div>
                            <div class="pi-text">
                                <div class="catagory-name">ÁO</div>
                                <a >
                                    <h5>Áo Len Cao Cấp</h5>
                                </a>
                                <div class="product-price">
                                    160.000đ
                                    <span>350.000đ</span>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="product-item">
                        <a href="<c:url value="/view/web/product-details.jsp"/>">
                            <div class="pi-pic">
                                <img src="<c:url value="/template/web/img/products/women-2.jpg"/>" alt="">

                                <div class="icon">
                                    <i class="icon_heart_alt"></i>
                                </div>
                                <ul>
                                    <li class="w-icon active"><a href="#"><i class="icon_bag_alt"></i></a></li>
                                    <li class="quick-view"><a href="#">+ Quick View</a></li>
                                    <li class="w-icon"><a href="#"><i class="fa fa-random"></i></a></li>
                                </ul>
                            </div>
                            <div class="pi-text">
                                <div class="catagory-name">ÁO</div>
                                <a >
                                    <h5>Áo Len Cổ Lọ</h5>
                                </a>
                                <div class="product-price">
                                    130.000đ
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="product-item">
                        <a href="<c:url value="/view/web/product-details.jsp"/>">
                        <div class="pi-pic">
                            <img src="<c:url value="/template/web/img/products/women-3.jpg"/>" alt="">
                            <div class="icon">
                                <i class="icon_heart_alt"></i>
                            </div>
                            <ul>
                                <li class="w-icon active"><a href="#"><i class="icon_bag_alt"></i></a></li>
                                <li class="quick-view"><a href="#">+ Quick View</a></li>
                                <li class="w-icon"><a href="#"><i class="fa fa-random"></i></a></li>
                            </ul>
                        </div>
                        <div class="pi-text">
                            <div class="catagory-name">ÁO</div>
                            <a >
                                <h5>Áo Len SWETER</h5>
                            </a>
                            <div class="product-price">
                                340.000đ
                            </div>
                        </div>
                        </a>
                    </div>
                    <div class="product-item">
                        <a href="<c:url value="/view/web/product-details.jsp"/>">
                        <div class="pi-pic">
                            <img src="<c:url value="/template/web/img/products/women-4.jpg"/>" alt="">
                            <div class="icon">
                                <i class="icon_heart_alt"></i>
                            </div>
                            <ul>
                                <li class="w-icon active"><a href="#"><i class="icon_bag_alt"></i></a></li>
                                <li class="quick-view"><a href="#">+ Quick View</a></li>
                                <li class="w-icon"><a href="#"><i class="fa fa-random"></i></a></li>
                            </ul>
                        </div>
                        <div class="pi-text">
                            <div class="catagory-name">TÚI SÁCH</div>
                            <a >
                                <h5>Túi Converse</h5>
                            </a>
                            <div class="product-price">
                                340.000đ
                            </div>
                        </div>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Women Banner Section End -->

<!-- Deal Of The Week Section Begin-->
<section class="deal-of-week set-bg spad" data-setbg="<c:url value="/template/web/img/time-bg.jpg"/>">
    <div class="container">
        <div class="col-lg-6 text-center">
            <div class="section-title">
                <h2>Ưu Đãi Đặc Biệt</h2>
                <p>30 ngày là thời gian cho sản phẩm này<br/> mua sắm ngay kẻo lỡ,
                    túi sách tay hạng sang </p>
                <div class="product-price">
                    135.000đ
                    <span>/ Túi sách tay</span>
                </div>
            </div>
            <div class="countdown-timer" id="countdown">
                <div class="cd-item">
                    <span>56</span>
                    <p>Days</p>
                </div>
                <div class="cd-item">
                    <span>12</span>
                    <p>Hrs</p>
                </div>
                <div class="cd-item">
                    <span>40</span>
                    <p>Mins</p>
                </div>
                <div class="cd-item">
                    <span>52</span>
                    <p>Secs</p>
                </div>
            </div>
            <a href="#" class="primary-btn">MUA NGAY</a>
        </div>
    </div>
</section>
<!-- Deal Of The Week Section End -->

<!-- Man Banner Section Begin -->
<section class="man-banner spad">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-8">
                <div class="filter-control">
                    <ul>
                        <li class="active">Quần Áo</li>
                        <li>Túi Sách</li>
                        <li>Giày</li>
                        <li>Phụ Kiện</li>
                    </ul>
                </div>
                <div class="product-slider owl-carousel">
                    <div class="product-item">
                        <a href="<c:url value="/view/web/product-details.jsp"/>">
                        <div class="pi-pic">
                            <img src="<c:url value="/template/web/img/products/man-1.jpg"/>" alt="">
                            <div class="sale">Sale</div>
                            <div class="icon">
                                <i class="icon_heart_alt"></i>
                            </div>
                            <ul>
                                <li class="w-icon active"><a href="#"><i class="icon_bag_alt"></i></a></li>
                                <li class="quick-view"><a href="#">+ Quick View</a></li>
                                <li class="w-icon"><a href="#"><i class="fa fa-random"></i></a></li>
                            </ul>
                        </div>
                        <div class="pi-text">
                            <div class="catagory-name">BALO</div>
                            <a >
                                <h5>Balo Phượt Thủ</h5>
                            </a>
                            <div class="product-price">
                                140.000đ
                                <span>350.000đ</span>
                            </div>
                        </div>

                        </a>
                    </div>
                    <div class="product-item">
                        <a href="<c:url value="/view/web/product-details.jsp"/>">
                        <div class="pi-pic">
                            <img src="<c:url value="/template/web/img/products/man-2.jpg"/>" alt="">
                            <div class="icon">
                                <i class="icon_heart_alt"></i>
                            </div>
                            <ul>
                                <li class="w-icon active"><a href="#"><i class="icon_bag_alt"></i></a></li>
                                <li class="quick-view"><a href="#">+ Quick View</a></li>
                                <li class="w-icon"><a href="#"><i class="fa fa-random"></i></a></li>
                            </ul>
                        </div>
                        <div class="pi-text">
                            <div class="catagory-name">GIÀY</div>
                            <a >
                                <h5>Giày Nam Sneaker</h5>
                            </a>
                            <div class="product-price">
                                2.000.000đ
                            </div>
                        </div>
                        </a>
                    </div>
                    <div class="product-item">
                        <a href="<c:url value="/view/web/product-details.jsp"/>">
                        <div class="pi-pic">
                            <img src="<c:url value="/template/web/img/products/man-3.jpg"/>" alt="">
                            <div class="icon">
                                <i class="icon_heart_alt"></i>
                            </div>
                            <ul>
                                <li class="w-icon active"><a href="#"><i class="icon_bag_alt"></i></a></li>
                                <li class="quick-view"><a href="#">+ Quick View</a></li>
                                <li class="w-icon"><a href="#"><i class="fa fa-random"></i></a></li>
                            </ul>
                        </div>
                        <div class="pi-text">
                            <div class="catagory-name">ÁO</div>
                            <a >
                                <h5>Áo Khoắc Dù 2020</h5>
                            </a>
                            <div class="product-price">
                                340.000đ
                            </div>
                        </div>
                        </a>
                    </div>
                    <div class="product-item">
                        <a href="<c:url value="/view/web/product-details.jsp"/>">
                        <div class="pi-pic">
                            <img src="<c:url value="/template/web/img/products/man-4.jpg"/>" alt="">
                            <div class="icon">
                                <i class="icon_heart_alt"></i>
                            </div>
                            <ul>
                                <li class="w-icon active"><a href="#"><i class="icon_bag_alt"></i></a></li>
                                <li class="quick-view"><a href="#">+ Quick View</a></li>
                                <li class="w-icon"><a href="#"><i class="fa fa-random"></i></a></li>
                            </ul>
                        </div>
                        <div class="pi-text">
                            <div class="catagory-name">ÁO</div>
                            <a >
                                <h5>Áo Khoắc jean</h5>
                            </a>
                            <div class="product-price">
                                350.000đ
                            </div>
                        </div>
                        </a>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 offset-lg-1">
                <div class="product-large set-bg m-large" data-setbg="<c:url value="/template/web/img/products/man-large.jpg"/>">
                    <h2>Thời Trang Nam</h2>
                    <a href="#">Xem Ngay</a>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Man Banner Section End -->


<!-- Instagram Section Begin -->
<div class="instagram-photo">

    <div class="insta-item set-bg" data-setbg="<c:url value="/template/web/img/insta-1.jpg"/>">
    
        <div class="inside-text">
            <i class="ti-instagram"></i>
            <h5><a href="#">Bộ sưu tập</a></h5>
        </div>
    </div>
    <div class="insta-item set-bg" data-setbg="<c:url value="/template/web/img/insta-2.jpg"/>">
        <div class="inside-text">
            <i class="ti-instagram"></i>
            <h5><a href="#">Bộ sưu tập</a></h5>
        </div>
    </div>
    <div class="insta-item set-bg" data-setbg="<c:url value="/template/web/img/insta-3.jpg"/>">
        <div class="inside-text">
            <i class="ti-instagram"></i>
            <h5><a href="#">Bộ sưu tập</a></h5>
        </div>
    </div>
    <div class="insta-item set-bg" data-setbg="<c:url value="/template/web/img/insta-4.jpg"/>">
        <div class="inside-text">
            <i class="ti-instagram"></i>
            <h5><a href="#">Bộ sưu tập</a></h5>
        </div>
    </div>
    <div class="insta-item set-bg" data-setbg="<c:url value="/template/web/img/insta-5.jpg"/>">
        <div class="inside-text">
            <i class="ti-instagram"></i>
            <h5><a href="#">Bộ sưu tập</a></h5>
        </div>
    </div>
    <div class="insta-item set-bg" data-setbg="<c:url value="/template/web/img/insta-6.jpg"/>">
        <div class="inside-text">
            <i class="ti-instagram"></i>
            <h5><a href="#">Bộ sưu tập</a></h5>
        </div>
    </div>
</div>
<!-- Instagram Section End -->
</body>
</html>